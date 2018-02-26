using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

public partial class CarritoComprasNew : System.Web.UI.Page
{
    private clsUsuario usr;
    protected void Page_Load(object sender, EventArgs e)
    {
        usr = (clsUsuario)Session["sUser"];
        if (usr == null) Response.Redirect("LoginNew.aspx");

        if (!IsPostBack)
        {
            cargarCarrito();
        }
    }

    private void cargarCarrito()
    {
        var carrito = Session["sCarrito"] as List<clsJuego>;

        if (carrito != null)
        {
            rpCarrito.DataSource = carrito;
            rpCarrito.DataBind();
        }
    }

    protected void rpCarrito_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Eliminar")
        {
            var carrito = Session["sCarrito"] as List<clsJuego>;

            if (carrito != null)
            {
                carrito.RemoveAt(e.Item.ItemIndex);

                rpCarrito.DataSource = carrito;
                rpCarrito.DataBind();
            }
        }
    }

    protected void btnComprar_Click(object sender, EventArgs e)
    {
        var carrito = Session["sCarrito"] as List<clsJuego>;

        if (carrito != null && carrito.Count > 0)
        {
            var db = new clsDB();
            string stResult = "";
            decimal? monto = carrito.Sum(item => item.Precio);

            var ds = db.ExecuteQuery("INSERT INTO Ventas VALUES('" + usr.User + "', getdate(), " + monto.ToString() + ", 0 ); SELECT SCOPE_IDENTITY()", ref stResult);

            if (stResult == "OK")
            {
                db.ExecuteQuery("INSERT INTO VentasXUsuario VALUES('" + usr.User + "', + " + Convert.ToInt32(ds.Tables[0].Rows[0][0]) + ")", ref stResult);

                if (stResult == "OK")
                {
                    foreach (var juego in carrito)
                    {
                        db.ExecuteQuery("INSERT INTO VentasXJuegos VALUES('" + juego.Nombre + "', " + ds.Tables[0].Rows[0][0] + ", " + juego.Precio + ")", ref stResult);
                    }

                    Session["sCarrito"] = null;
                    rpCarrito.DataSource = null;
                    rpCarrito.DataBind();

                    var utilJS = new clsUtilityJS(this);
                    utilJS.swal("Aviso", "Compra realizada con éxito", "success");
                }
            }
        }
    }
}