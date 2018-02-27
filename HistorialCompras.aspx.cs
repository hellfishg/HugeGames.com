using System;
using System.Collections.Generic;

public partial class HistorialCompras : System.Web.UI.Page
{
    private clsUsuario usr;
    protected void Page_Load(object sender, EventArgs e)
    {
        usr = (clsUsuario)Session["sUser"];
        if (usr == null) Response.Redirect("LoginNew.aspx");
        if (usr.Perfil == 1) Response.Redirect("LoginNew.aspx");

        if (!IsPostBack)
        {
            cargarHistorial();
        }
    }

    private void cargarHistorial()
    {
        var db = new clsDB();
        var param = new Dictionary<string, dynamic>()
        {
            { "user", usr.User }
        };

        string stResult = "";

        var ds = db.ExecuteSP("[UP_HG_Historial]", ref stResult, param);

        if (stResult == "OK")
        {
            rpCompras.DataSource = ds;
            rpCompras.DataBind();
        }
    }
}