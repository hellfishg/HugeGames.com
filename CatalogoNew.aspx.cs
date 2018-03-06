using System;

public partial class CatalogoNew : System.Web.UI.Page
{
    private clsUsuario usr = new clsUsuario();
    protected void Page_Load(object sender, EventArgs e)
    {
        var usuario = Session["sUser"] as clsUsuario;
        if (usuario != null) usr = usuario;
       // if (usr.Perfil == 1) Response.Redirect("LoginNew.aspx");

        if (!IsPostBack)
        {
            cargarJuegos();
        }
    }

    private void cargarJuegos()
    {
        var db = new clsDB();
        string stResult = "";
        var ds = db.ExecuteQuery("select * from Juegos where Borrado_JUE = 0", ref stResult);

        if (stResult == "OK")
        {
            rpJuegos.DataSource = ds;
            rpJuegos.DataBind();
        }
    }
}