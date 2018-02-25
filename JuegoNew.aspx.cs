using System;
using System.Collections.Generic;

public partial class CarritoComprasNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarJuego();
        }
    }

    private void cargarJuego()
    {
        var db = new clsDB();
        string stResult = "";
        var ds = db.ExecuteQuery("SELECT * FROM Juegos WHERE Nombre_JUE = '" + Request.QueryString["game"].Replace("%20", " ") + "'", ref stResult);

        if (stResult == "OK")
        {
            rpJuego.DataSource = ds;
            rpJuego.DataBind();
        }
    }

    protected void rpJuego_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Carrito")
        {
            var carrito = Session["sCarrito"] as List<clsJuego>;

            if (carrito == null)
            {
                carrito = new List<clsJuego>();
            }

            var juego = clsJuego.ObtenerJuego(e.CommandArgument.ToString());

            carrito.Add(juego);
            Session["sCarrito"] = carrito;

            var utilJS = new clsUtilityJS(this);

            utilJS.swal("Aviso", "Item agregado al carrito", "success");
        }
    }
}