using System;
using System.Collections.Generic;

public partial class CarritoComprasNew : System.Web.UI.Page
{
    public clsUsuario Usr = new clsUsuario();
    protected void Page_Load(object sender, EventArgs e)
    {
        var user = Session["sUser"] as clsUsuario;
        if (user != null) Usr = user;

        if (!IsPostBack)
        {
            cargarJuego();
        }
    }

    private void cargarJuego()
    {
        string nombre = Request.QueryString["game"].Replace("%20", " ");
        if (!string.IsNullOrEmpty(nombre))
        {
            var db = new clsDB();
            string stResult = "";
            var ds = db.ExecuteQuery("SELECT * FROM Juegos WHERE Nombre_JUE = '" + nombre + "'", ref stResult);

            if (stResult == "OK")
            {
                rpJuego.DataSource = ds;
                rpJuego.DataBind();
            }
        }
        else
        {
            Response.Redirect("CatalogoNew.aspx");
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