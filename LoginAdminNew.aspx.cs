using System;
using System.Collections.Generic;

public partial class LoginAdminNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["sUser"] = null;
    }

    protected void btnLogin_ServerClick(object sender, EventArgs e)
    {
        var objDB = new clsDB();
        string stResult = "";

        var dic = new Dictionary<string, dynamic>()
        {
            { "usuario", txtEmail.Value },
            { "pwd", txtPwd.Value }
        };

        var ds = objDB.ExecuteSP("[UP_HG_Administradores_Login]", ref stResult, dic);

        var utilJS = new clsUtilityJS(this);

        if (stResult != "OK") utilJS.swal("Error", "Error de credenciales", "error");
        else
        {
            var usr = new clsUsuario()
            {
                User = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["NombreUser_ADM"]).ToString(),
                Email = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["Mail_ADM"]).ToString(),
                Perfil = 1,
                IsLoged = true
            };

            Session["sUser"] = usr;
            Response.Redirect("CatalogoNew.aspx");
        }
    }
}