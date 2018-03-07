using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pepito : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        { 
            cargarJuego(); 
        }
    }

    private void cargarJuego()
    {
        
            var db = new clsDB();
            string stResult = "";
            var ds = db.ExecuteQuery("SELECT * FROM Juegos WHERE Nombre_JUE = 'Doom'", ref stResult);

            if (stResult == "OK")
            {
                rpJuegos.DataSource = ds;
                rpJuegos.DataBind();
            }
       
    }
}