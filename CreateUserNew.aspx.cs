using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateUserNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCrear_ServerClick(object sender, EventArgs e)
    {
        var objDB = new clsDB();
        string stResult = "LALA";
        var dic = new Dictionary<string, dynamic>()
        {
            { "op", "create" }
        };


        if (!string.IsNullOrEmpty(txtUsuario.Value)) dic.Add("usuario", txtUsuario.Value);
        if (!string.IsNullOrEmpty(txtEmail.Value)) dic.Add("email", txtEmail.Value);
        if (!string.IsNullOrEmpty(txtNumTarjeta.Value)) dic.Add("numtarjeta", txtNumTarjeta.Value);
        if (!string.IsNullOrEmpty(txtNombreTarjeta.Value)) dic.Add("nomtarjeta", txtNombreTarjeta.Value);
        if (!string.IsNullOrEmpty(txtPwd.Value)) dic.Add("contraseña", txtPwd.Value);

        var dic2 = new Dictionary<string, dynamic>()
        {
            { "op", "get" },
            { "usuario", txtUsuario.Value }
        };

        var ds2 = objDB.ExecuteQuery2("Select * from usuarios where NombreUser_USU = '" + txtUsuario.Value + "'", ref stResult);

        var utilJS2 = new clsUtilityJS(this);


        if (stResult == "OK")
        {
            utilJS2.swal("Error", "El usuario ya existe", "error");
        }

        else if (txtPwd.Value != txtRPwd.Value)
        {
            utilJS2.swal("Error", "Las contraseñas no son iguales", "error");
        }

        else
        {
            var ds = objDB.ExecuteSP("[UP_HG_Usuarios_CREATE]", ref stResult, dic);

            utilJS2.swal((stResult == "OK") ? "Aviso" : "Error", clsDB.ifNullNeedString(ds.Tables[0].Rows[0][1]).ToString(), (stResult == "OK") ? "success" : "error");
        }
    }
}