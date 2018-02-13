using System;

public partial class ABMJuegosNew : System.Web.UI.Page
{
    private clsUsuario usr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            usr = (clsUsuario)Session["sUser"];
            if (usr == null) Response.Redirect("LoginNew.aspx");
            if (usr.Perfil == 2) Response.Redirect("PerfilNew.aspx");
            cargarJuegos();
        }
    }

    private void cargarJuegos()
    {
        string stResult = "";
        var juegos = clsJuego.ObtenerJuegos(ref stResult);

        if (stResult == "OK")
        {
            gvJuegos.DataSource = juegos;
            gvJuegos.DataBind();
        }
    }

    protected void gvJuegos_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Editar")
        {
            var juego = clsJuego.ObtenerJuego(e.CommandArgument.ToString());

            if(juego != null)
            {
                txtNombre.Value = juego.Nombre;
                txtDescripcion.Value = juego.Descripcion;
                txtImgChica.Value = juego.ImagenChica;
                txtImgGrande.Value = juego.ImagenGrande;
                txtLink.Value = juego.Link;
                txtPrecio.Value = juego.Precio.ToString();
                chkBorrado.Checked = Convert.ToBoolean(juego.Borrado);
            }
        }
    }
}