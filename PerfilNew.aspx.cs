using System;
using System.Collections.Generic;

public partial class PerfilNew : System.Web.UI.Page
{
    private clsUsuario usr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            usr = (clsUsuario)Session["sUser"];
            if (usr == null) Response.Redirect("LoginNew.aspx");
            cargarDatosUsuario();
        }
    }

    private void cargarDatosUsuario()
    {
        var objDB = new clsDB();
        string stResult = "OK";
        var dic = new Dictionary<string, dynamic>()
        {
            { "op", "get" },
            { "usuario", usr.User }
        };

        var ds = objDB.ExecuteSP("UP_HG_Usuarios_Consultar", ref stResult, dic);

        if (stResult == "OK")
        {
            txtUsuario.Value = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["user"]).ToString();
            txtEmail.Value = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["email"]).ToString();
            txtNumTarjeta.Value = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["ncard"]).ToString();
            txtNombreTarjeta.Value = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["card"]).ToString();
        }
    }

    protected void btnDatos_ServerClick(object sender, EventArgs e)
    {
        var objDB = new clsDB();
        string stResult = "";
        var dic = new Dictionary<string, dynamic>()
        {
            { "op", "update" }
        };

        if (!string.IsNullOrEmpty(txtUsuario.Value)) dic.Add("usuario", txtUsuario.Value);
        if (!string.IsNullOrEmpty(txtEmail.Value)) dic.Add("email", txtEmail.Value);
        if (!string.IsNullOrEmpty(txtNumTarjeta.Value)) dic.Add("numtarjeta", txtNumTarjeta.Value);
        if (!string.IsNullOrEmpty(txtNombreTarjeta.Value)) dic.Add("nomtarjeta", txtNombreTarjeta.Value);
        if (!string.IsNullOrEmpty(txtPwd.Value)) dic.Add("contraseña", txtPwd.Value);

        var ds = objDB.ExecuteSP("[UP_HG_Usuarios_ABM]", ref stResult, dic);

        var utilJS = new clsUtilityJS(this);

        utilJS.swal((stResult == "OK") ? "Aviso" : "Error",
            clsDB.ifNullNeedString(ds.Tables[0].Rows[0][1]).ToString(),
            (stResult == "OK") ? "success" : "error");
    }
}