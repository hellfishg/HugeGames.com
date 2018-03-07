using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PacksNew : System.Web.UI.Page
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

        var db = new clsDB();
        string stResult = "";
        
        //var ds = db.ExecuteQuery("SELECT * FROM juegos WHERE Nombre_JUE = 'Doom'", ref stResult);
        
        var dic = new Dictionary<string, dynamic>();
            dic.Add("nom", "pack 1");

        var ds2 = db.ExecuteSP("[UP.HG_Packs]", ref stResult, dic );

        if (stResult == "OK")
        {
            pack1.DataSource = ds2;
            pack1.DataBind();
        }

        dic.Clear();
        dic.Add("nom", "pack 2");

        ds2 = db.ExecuteSP("[UP.HG_Packs]", ref stResult, dic);

        if (stResult == "OK")
        {
            pack2.DataSource = ds2;
            pack2.DataBind();
        }

        dic.Clear();
        dic.Add("nom", "pack 3");

        ds2 = db.ExecuteSP("[UP.HG_Packs]", ref stResult, dic);

        if (stResult == "OK")
        {
            pack3.DataSource = ds2;
            pack3.DataBind();
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