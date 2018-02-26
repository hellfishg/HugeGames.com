using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReporteCompras : System.Web.UI.Page
{
    private clsDB _db = new clsDB();
    private clsUsuario _user;
    private clsReporte.graficoBarras _chart;
    private int _orden = -1;
    private int _fecha = -1;
    protected void Page_Load(object sender, System.EventArgs e)
    {
        ClientScript.GetPostBackEventReference(this, string.Empty);
        if ((Session["sUser"] != null))
        {
            _user = (clsUsuario)Session["sUser"];
            if (_user.Perfil == 2)
            {
                Response.Redirect("HomeNew.aspx");
            }

            if (!IsPostBack)
            {
                var param = new Dictionary<string, dynamic>();
                if (hfChangeGrid != null && hfChangeGrid.Value != "0")
                {
                    param.Add("force", hfChangeGrid.Value);
                }

                cargarGraficos(param);
                cargarGrilla(param);
            }
            else
            {
                if (hfParameter != null && hfParameter.Value != "")
                {
                    alternate();
                }
            }
        }
        else
        {
            Response.Redirect("LoginNew.aspx");
        }
    }

    private void alternate()
    {
        var param = new Dictionary<string, dynamic>();
        if (hfChangeGrid != null && hfChangeGrid.Value != "0")
        {
            param.Add("force", hfChangeGrid.Value);
        }

        cargarGraficos(param);
        param.Add("alt", hfParameter.Value);
        param.Add("accion", "grilla");
        cargarGrilla(param);
    }

    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        collectParam();
    }

    private void collectParam()
    {
        var param = new Dictionary<string, dynamic>();
        foreach (Control control in reporteDiv.Controls)
        {
            if (control is TextBox)
            {
                param.Add(control.ID, ((TextBox)control).Text);
            }
            else if (control is DropDownList)
            {
                param.Add(control.ID, ((DropDownList)control).SelectedValue);
            }
        }

        cargarGraficos(param);
        cargarGrilla(param);
    }

    private void cargarGraficos(Dictionary<string, dynamic> Param = null)
    {
        string[] stGraficos;
        stGraficos = hdReporte.Value.Split(';');
        for (int i = 0; i <= stGraficos.Count() - 1; i++)
        {
            Literal script = new Literal();
            Literal html = new Literal();
            var stThisGraf = stGraficos[i].Split('/');
            MostrarReporte(stThisGraf[0], stThisGraf[2], Param);
            clsReporte.reemplazo(ref script, ref html, _chart, stThisGraf[1], i, stThisGraf[2], hfDatos.Value, stThisGraf[3], true);
            plResultados.Controls.Add(script);
            plGraficos.Controls.Add(html);
        }
    }

    private void MostrarReporte(string SP, string Tipo, Dictionary<string, dynamic> Param = null)
    {
        {
            DataSet ds;
            if (Param != null)
            {
                string stResult = "";
                ds = _db.ExecuteSP(SP, ref stResult, Param);
            }
            else
            {
                string stResult = "";
                ds = _db.ExecuteSP(SP, ref stResult);
            }

            try
            {
                if (ds.Tables[0].Rows.Count >= 0)
                {
                    switch (Tipo)
                    {
                        case "BARRAS":
                            clsReporte.loadChart(ref ds, ref _chart, ref hfDatos);
                            break;
                    }
                }
            }
            catch (Exception ex)
            {
                clsLOG.generateError("Mostrar Reporte " + SP + " = " + ex.Message);
            }
        }
    }
    private void cargarGrilla(Dictionary<string, dynamic> Param = null)
    {
        var QueryString = hdReporte.Value.Split('/');
        DataSet ds;
        if (Param != null)
        {
            string stResult = "";
            ds = _db.ExecuteSP(QueryString[0], ref stResult, Param);
        }
        else
        {
            string stResult = "";
            ds = _db.ExecuteSP(QueryString[0], ref stResult);
        }

        if (ds.Tables[0].Rows.Count > 0)
        {
            gvReporte.DataSource = ds;
            gvReporte.DataBind();
        }
    }

    protected void gvReporte_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                for (int i = 0; i <= e.Row.Cells.Count - 1; i++)
                {
                    string headerText = e.Row.Cells[i].Text;
                    if (headerText == "Orden")
                    {
                        _orden = i;
                        e.Row.Cells[i].Visible = false;
                    }
                    else if (headerText.ToLower().Contains("fecha"))
                    {
                        _fecha = i;
                    }
                }
            }
            else if (_orden > -1 & _fecha > -1)
            {
                e.Row.Cells[_fecha].Attributes.Add("data-order", e.Row.Cells[_orden].Text);
                e.Row.Cells[_orden].Visible = false;
            }
        }
        catch (Exception ex)
        {
        }
    }
}