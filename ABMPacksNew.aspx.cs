using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ABMPacksNew : System.Web.UI.Page
{   
    protected void Page_Load(object sender, EventArgs e)
    {
                      
    }
    protected void btnModificar1_Click(object sender, EventArgs e)
    {
        var objDB = new clsDB();
        string stResult = "";

        var ds = objDB.ExecuteQuery("update juegos set precio_jue ='" + txtPrecio1.Text +"' where nombre_jue = 'pack 1'", ref stResult);

        var ds2 = objDB.ExecuteQuery("update PackDeJuegos set Juego1Nom_PDJ = '" + ddlJuego1.SelectedItem.ToString() + "', Juego2Nom_PDJ = '" + DDLJuego2.SelectedItem.ToString() + "', Juego3Nom_PDJ = '" + DDLJuego3.SelectedItem.ToString() + "', Juego4Nom_PDJ = '" + DDLJuego4.SelectedItem.ToString() + "', Juego5Nom_PDJ = '" + DDLJuego5.SelectedItem.ToString() + "' where NombrePack_PDJ = 'pack 1'", ref stResult);

        var utilJS2 = new clsUtilityJS(this);

        if (stResult == "OK")
        {
            utilJS2.swal("OK", "Pack creado con exito", "success");
        }
    }
    protected void btnModificar2_Click(object sender, EventArgs e)
    {
        var objDB = new clsDB();
        string stResult = "";

        var ds = objDB.ExecuteQuery("update juegos set precio_jue = '" + txtPrecio1.Text + " where nombre_jue = 'pack 2'", ref stResult);
        var ds2 = objDB.ExecuteQuery("update PackDeJuegos set Juego1Nom_PDJ = '" + ddlJuego6.SelectedItem.ToString() + "', Juego2Nom_PDJ = '" + DDLJuego7.SelectedItem.ToString() + "', Juego3Nom_PDJ = '" + DDLJuego8.SelectedItem.ToString() + "', Juego4Nom_PDJ = '" + DDLJuego9.SelectedItem.ToString() + "', Juego5Nom_PDJ = '" + DDLJuego10.SelectedItem.ToString() + "' where NombrePack_PDJ = 'pack 2'", ref stResult);

        var utilJS2 = new clsUtilityJS(this);

        if (stResult == "OK")
        {
            utilJS2.swal("OK", "Pack creado con exito", "success");
        }
    }
    protected void btnModificar3_Click(object sender, EventArgs e)
    {
        var objDB = new clsDB();
        string stResult = "";
        var ds = objDB.ExecuteQuery("update juegos set precio_jue = '" + txtPrecio1.Text + "' where nombre_jue = 'pack 3'", ref stResult);
        var ds2 = objDB.ExecuteQuery("update PackDeJuegos set Juego1Nom_PDJ = '" + ddlJuego11.SelectedItem.ToString() + "', Juego2Nom_PDJ = '" + DDLJuego12.SelectedItem.ToString() + "', Juego3Nom_PDJ = '" + DDLJuego13.SelectedItem.ToString() + "', Juego4Nom_PDJ = '" + DDLJuego14.SelectedItem.ToString() + "', Juego5Nom_PDJ = '" + DDLJuego15.SelectedItem.ToString() + "' where NombrePack_PDJ = 'pack 3'", ref stResult);

        var utilJS2 = new clsUtilityJS(this);
        
        if (stResult == "OK")
        {
            utilJS2.swal("OK", "Pack creado con exito", "success");
        }
    }
}