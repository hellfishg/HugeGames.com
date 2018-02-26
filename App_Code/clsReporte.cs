using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI.WebControls;

/// <summary>
/// Descripción breve de clsReporte
/// </summary>
public class clsReporte
{
    public struct graficoBarras
    {
        public string Columnas;
        public string Data;
        public string Color;
        public string Labels;
    }
    public static void reemplazo(ref Literal script, ref Literal html, graficoBarras _chart, string Title, int I, string Type, string Datos, string Url, bool Remove = false, clsUsuario user = null)
    {
        switch (Type)
        {
            case "BARRAS":
                //Edicion de HTML
                html.Text = clsUtility.openTextFile("barras.txt");
                html.Text = html.Text.Replace("#GRAPH_00", I.ToString());
                html.Text = html.Text.Replace("TITLE" + I.ToString(), Title);
                html.Text = html.Text.Replace("TYPE" + I.ToString(), "barChart" + I.ToString());
                //Edicion de JS
                script.Text = clsUtility.openTextFile("barrasJS.txt");
                script.Text = script.Text.Replace("#GRAPH_00", I.ToString());
                script.Text = script.Text.Replace("@ColorString" + I.ToString(), _chart.Color);
                script.Text = script.Text.Replace("@DataString" + I.ToString(), _chart.Data);
                script.Text = script.Text.Replace("@LabelsString" + I.ToString(), _chart.Labels);
                script.Text = script.Text.Replace("@ColumnasString" + I.ToString(), _chart.Columnas);
                script.Text = script.Text.Replace("xx" + I.ToString(), Datos);
                script.Text = script.Text.Replace("zz" + I.ToString(), I.ToString());
                script.Text = script.Text.Replace("LINK" + I.ToString(), Url);
                if (Remove)
                {
                    script.Text = script.Text.Replace("//" + I.ToString(), "");
                }
                break;
        }
    }

    public static void loadChart(ref DataSet ds, ref graficoBarras _chart, ref HiddenField hfDatos)
    {
        var columna = new List<string>();
        var label = new List<string>();
        var data = new List<string>();
        var color = new List<string>();
        for (int i = 0; i <= ds.Tables[0].Rows.Count -1; i++)
        {
            color.Add(clsUtility.rColor(ref color));
            columna.Add("'" + ds.Tables[0].Rows[i][0].ToString() + "'");
            data.Add(ds.Tables[0].Rows[i][1].ToString());
        }
        if (label.Count == 0)
        {
            _chart.Labels = "";
        }
        else
        {
            _chart.Labels = string.Join(",", label.ToArray());
        }
        _chart.Columnas = string.Join(",", columna.ToArray());
        _chart.Data = string.Join("|", data.ToArray());
        _chart.Color = String.Join("|", color.ToArray());
        hfDatos.Value = ds.Tables.Count.ToString();
    }
}