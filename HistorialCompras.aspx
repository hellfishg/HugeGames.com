<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="HistorialCompras.aspx.cs" Inherits="HistorialCompras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="card bg-light">
                <div class="card-header">
                    <h4>Historial de compras</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="tblCompras" class="table table-sm table-striped table-bordered bg-white">
                            <thead>
                                <tr>
                                    <th>Fecha</th>
                                    <th>Monto</th>
                                    <th>Juego</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpCompras" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("fecha") %></td>
                                            <td><%# Eval("monto") %></td>
                                            <td><%# Eval("juego") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
        <script>
        $(function () {
            rpDataTable('tblCompras');
        });
    </script>
</asp:Content>

