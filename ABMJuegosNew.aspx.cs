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

            if (juego != null)
            {
                hfExiste.Value = "1";

                txtNombre.Disabled = true;

                txtNombre.Value = juego.Nombre;
                txtDescripcion.Value = juego.Descripcion;
                txtImgChica.Value = juego.ImagenChica;
                txtImgGrande.Value = juego.ImagenGrande;
                txtLink.Value = juego.Link;
                txtPrecio.Value = juego.Precio.ToString();
                txtRequisitos.Value = juego.Requisitos;
                chkBorrado.Checked = Convert.ToBoolean(juego.Borrado);
            }
        }
    }

    protected void btnGuardar_ServerClick(object sender, EventArgs e)
    {
        var utilJS = new clsUtilityJS(this);
        try
        {
            var juego = new clsJuego()
            {
                Nombre = txtNombre.Value,
                Descripcion = txtDescripcion.Value,
                ImagenChica = txtImgChica.Value,
                ImagenGrande = txtImgGrande.Value,
                Requisitos = txtRequisitos.Value,
                Link = txtLink.Value,
                Precio = Convert.ToDecimal(txtPrecio.Value),
                Borrado = Convert.ToInt32(chkBorrado.Checked)
            };

            if (juego.ABMJuego((hfExiste.Value == "0") ? "insert" : "update"))
            {
                utilJS.swal("Aviso", "Juego " + ((hfExiste.Value == "0") ? "insertado" : "actualizado") + " con éxito", "success");
                txtNombre.Disabled = false;
                limpiarCampos();
                cargarJuegos();
            }
            else
                utilJS.swal("Aviso", "Ocurrió un error al " + ((hfExiste.Value == "0") ? "insertar" : "actualizar") + " el juego", "error");
        }
        catch (Exception ex)
        {
            utilJS.swal("Aviso", "Ocurrió un error al " + ((hfExiste.Value == "0") ? "insertar" : "actualizar") + " el juego", "error");
        }
    }

    private void limpiarCampos()
    {
        hfExiste.Value = "0";
        txtNombre.Value = "";
        txtDescripcion.Value = "";
        txtImgChica.Value = "";
        txtImgGrande.Value = "";
        txtLink.Value = "";
        txtPrecio.Value = "";
        txtRequisitos.Value = "";
        chkBorrado.Checked = false;
    }
}