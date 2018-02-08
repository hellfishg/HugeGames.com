using System;

public partial class HomeNew : System.Web.UI.MasterPage
{
    public clsUsuario Usr = new clsUsuario();
    protected void Page_Load(object sender, EventArgs e)
    {
        var session = Session["sUser"];

        if (session != null)
        {
            Usr = (clsUsuario)session;
        }
    }
}
