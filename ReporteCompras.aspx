<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="ReporteCompras.aspx.cs" Inherits="ReporteCompras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <asp:PlaceHolder ID="plResultados" runat="server"></asp:PlaceHolder>
    </div>
    <div class="row mb-5">
        <div class="col-md-12">
            <div class="card">
                <div class="form-horizontal">
                    <div class="card-header">
                        <h4>Parámetros</h4>
                    </div>
                    <div class="card-body" runat="server" id="reporteDiv">
                        <div class="form-group row">
                            <label class="col-sm-2 control-label">Mínimo de compras</label>
                            <div class="col-sm-2">
                                <asp:TextBox ID="Minimo" CssClass="form-control" placeholder="Ej = 1" runat="server"></asp:TextBox>
                            </div>
                            <label class="col-sm-2 control-label">Máximo de compras</label>
                            <div class="col-sm-2">
                                <asp:TextBox ID="Maximo" CssClass="form-control" placeholder="Ej = 9" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 control-label">Fecha Desde</label>
                            <div class="col-sm-2">
                                <asp:TextBox ID="FechaDesde" CssClass="form-control" placeholder="DD-MM-AAAA" runat="server"></asp:TextBox>
                            </div>
                            <label class="col-sm-2 control-label">Fecha Hasta</label>
                            <div class="col-sm-2">
                                <asp:TextBox ID="FechaHasta" CssClass="form-control" placeholder="DD-MM-AAAA" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-3">
                                <asp:Button CssClass="btn btn-success pull-left" ID="btnConfirmar" OnClientClick="cleanParam();" runat="server" Text="Filtrar" OnClick="btnConfirmar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-5">
        <asp:PlaceHolder ID="plGraficos" runat="server"></asp:PlaceHolder>
    </div>
    <div class="row" id="divReporte" runat="server">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <asp:GridView ID="gvReporte" runat="server" class="table table-bordered table-hover">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <!--HiddenFields-->
    <asp:HiddenField ID="hfDatos" runat="server" />
    <asp:HiddenField ID="hfDatosTorta" runat="server" />
    <asp:HiddenField ID="hfStrMenu" runat="server" />
    <!--El estandar es: "REPORTE/TITULO/TIPOGRAFICO/URL"-->
    <asp:HiddenField ID="hdReporte" runat="server" Value="UP_HG_ComprasPorUsuario/Compras por usuario/BARRAS/ReporteCompras.aspx" />
    <asp:HiddenField ID="hfParameter" runat="server" />
    <!--Parametro en caso de que sea necesario que la grilla muestre datos distintos al de los graficos (0 o 1)-->
    <asp:HiddenField ID="hfChangeGrid" runat="server" Value="0" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script>
        function cleanParam() {
            $("[id$=hfParameter]").val('');
        }
        datepicker('FechaDesde');
        datepicker('FechaHasta');
    </script>
</asp:Content>

