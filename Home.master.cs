using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPacks_Click(object sender, EventArgs e)
    {
        Server.Transfer("Packs.aspx");
    }
    protected void btnCatalogo_Click(object sender, EventArgs e)
    {
        Server.Transfer("Catalogo.aspx");
    }
    protected void btnCarrito0_Click(object sender, EventArgs e)
    {
        Server.Transfer("CarritoCompras.aspx");
    }
    protected void btnPerfil_Click(object sender, EventArgs e)
    {
        Server.Transfer("Perfil.aspx");
    }
}
