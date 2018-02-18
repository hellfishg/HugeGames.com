using System;
using System.Collections.Generic;
using System.Data;
/// <summary>
/// Descripción breve de clsJuego
/// </summary>
public class clsJuego
{
    public string Nombre { get; set; }
    public string Link { get; set; }
    public string ImagenGrande { get; set; }
    public string ImagenChica { get; set; }
    public string Descripcion { get; set; }
    public string Requisitos { get; set; }
    public decimal? Precio { get; set; }
    public int? Borrado { get; set; }

    public bool ABMJuego(string operation)
    {
        try
        {
            var objDB = new clsDB();
            string stResult = "";

            var dic = new Dictionary<string, dynamic>() {
                { "operation", operation }
            };

            dic.Add("nombre", this.Nombre);
            if (!string.IsNullOrEmpty(this.Link))
                dic.Add("link", this.Link);
            if (!string.IsNullOrEmpty(this.ImagenGrande))
                dic.Add("imagenGrande", this.ImagenGrande);
            if (!string.IsNullOrEmpty(this.ImagenChica))
                dic.Add("imagenChica", this.ImagenChica);
            if (!string.IsNullOrEmpty(this.Descripcion))
                dic.Add("descripcion", this.Descripcion);
            if (!string.IsNullOrEmpty(this.Requisitos))
                dic.Add("requisitos", this.Requisitos);
            if (this.Precio != null)
                dic.Add("precio", this.Precio);
            if (this.Borrado != null)
                dic.Add("borrado", this.Borrado);


            objDB.ExecuteSP("[UP_HG_Juegos_ABM]", ref stResult, dic);

            return (stResult == "OK") ? true : false;
        }
        catch (Exception ex)
        {
            clsLOG.generateError("clsJuego - ActualizarJuego ex: " + ex.Message);
            return false;
        }
    }

    public static clsJuego ObtenerJuego(string nombre)
    {
        try
        {
            var objDB = new clsDB();
            string stResult = "";

            var dic = new Dictionary<string, dynamic>();
            dic.Add("op", "get");
            dic.Add("nombre", nombre);

            var ds = objDB.ExecuteSP("[UP_HG_Juegos_Consultar]", ref stResult, dic);

            if (stResult != "OK") return null;

            return new clsJuego()
            {
                Nombre = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["nombre"]).ToString(),
                Link = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["link"]).ToString(),
                ImagenGrande = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["imagenGrande"]).ToString(),
                ImagenChica = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["imagenChica"]).ToString(),
                Descripcion = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["descripcion"]).ToString(),
                Requisitos = clsDB.ifNullNeedString(ds.Tables[0].Rows[0]["requisitos"]).ToString(),
                Precio = Convert.ToDecimal(clsDB.ifNullNeedZero(ds.Tables[0].Rows[0]["precio"])),
                Borrado = Convert.ToInt32(clsDB.ifNullNeedZero(ds.Tables[0].Rows[0]["borrado"]))
            };
        }
        catch (Exception ex)
        {
            clsLOG.generateError("clsJuego - ObtenerJuego ex: " + ex.Message);
            return null;
        }
    }

    public static DataSet ObtenerJuegos(ref string stResult)
    {
        DataSet ds = new DataSet();
        try
        {
            var objDB = new clsDB();

            var dic = new Dictionary<string, dynamic>();
            dic.Add("op", "con");

            ds = objDB.ExecuteSP("[UP_HG_Juegos_Consultar]", ref stResult, dic);
        }
        catch (Exception ex)
        {
            clsLOG.generateError("clsJuego - ObtenerJuego ex: " + ex.Message);
        }
        return ds;
    }
}