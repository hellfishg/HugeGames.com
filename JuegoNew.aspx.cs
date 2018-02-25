using System;

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
}