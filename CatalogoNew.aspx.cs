using System;

public partial class CatalogoNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cargarJuegos();
        }
    }

    private void cargarJuegos()
    {
        var db = new clsDB();
        string stResult = "";
        var ds = db.ExecuteQuery("select * from Juegos", ref stResult);

        if (stResult == "OK")
        {
            rpJuegos.DataSource = ds;
            rpJuegos.DataBind();
        }
    }
}