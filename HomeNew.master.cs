using System;
using System.Collections.Generic;

public partial class HomeNew : System.Web.UI.MasterPage
{
    public clsUsuario Usr = new clsUsuario();
    protected void Page_Load(object sender, EventArgs e)
    {
        var user = Session["sUser"] as clsUsuario;
        if (user != null) Usr = user;

        if (!IsPostBack)
        {
            //Generamos un diccionario con las opciones para iniciar sesion
            var lst = new Dictionary<string, dynamic>()
            {
                { "", "Seleccione una opción" },
                { "LoginNew.aspx", "Iniciar Sesión" },
                { "LoginAdminNew.aspx", "Iniciar Sesión Administrador" }
            };

            //Asignamos el datasource, la clave y el valor
            ddlLogin.DataSource = lst;
            ddlLogin.DataTextField = "Value";
            ddlLogin.DataValueField = "Key";
            ddlLogin.DataBind();
        }
    }

    protected void ddlLogin_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlLogin.SelectedIndex > 0)
        {
            //Al seleccionar una opcion del dropdown, redirigimos a la pagina seleccionada
            Response.Redirect(ddlLogin.SelectedValue);
        }
    }

    protected void btnSesion_ServerClick(object sender, EventArgs e)
    {
        Session["sUser"] = null;
        Response.Redirect("HomeNew.aspx");
    }
}
