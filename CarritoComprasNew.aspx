<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="CarritoComprasNew.aspx.cs" Inherits="CarritoComprasNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-2 d-flex justify-content-center">
            <img class="img-responsive" src="http://www.anjanicement.com/images/bg.jpg" />
        </div>
        <div class="col-md-8">
            <h3 class="mb-4 text-center"><i class="fa fa-shopping-cart"></i>&nbsp;Carrito de compras</h3>
            <div class="card bg-light">
                <div class="card-header">
                    <h4>Listado de items en el carrito</h4>
                </div>
                <div class="card-body">
                    <ul class="list-group">
                        <asp:Repeater runat="server" ID="rpCarrito" OnItemCommand="rpCarrito_ItemCommand">
                            <ItemTemplate>
                                <li class="list-group-item"><i class="fa fa-gamepad"></i>&nbsp;<%# Eval("Nombre") %>&nbsp;&nbsp;<i class="fa fa-usd"></i><%# Eval("Precio") %>
                                    <asp:LinkButton runat="server" CommandName="Eliminar" OnClientClick="deleteAlert(this, event, 'el juego')"><i class="float-right fa fa-times"></i></asp:LinkButton></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="card-footer">
                    <asp:LinkButton runat="server" ID="btnComprar" CssClass="btn btn-primary btn-sm pull-right" OnClick="btnComprar_Click"><i class="fa fa-shopping-cart"></i>&nbsp;Realizar compra</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-md-2 d-flex justify-content-center">
            <img class="img-responsive" src="http://www.anjanicement.com/images/bg.jpg" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

