<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="CarritoComprasNew.aspx.cs" Inherits="CarritoComprasNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-2 d-flex justify-content-center">
            <img class="img-responsive" src="http://via.placeholder.com/120x1000" />
        </div>
        <div class="col-md-8">
            <h3 class="mb-4 text-center"><i class="fa fa-shopping-cart"></i>&nbsp;Carrito de compras</h3>
            <div class="card bg-light">
                <div class="card-header">
                    <h4>Listado de items en el carrito</h4>
                </div>
                <div class="card-body">
                    <ul class="list-group">
                        <li class="list-group-item"><i class="fa fa-gamepad"></i>&nbsp;Juego 1&nbsp;&nbsp;<i class="fa fa-usd"></i>500</li>
                        <li class="list-group-item"><i class="fa fa-gamepad"></i>&nbsp;Pack 2&nbsp;&nbsp;<i class="fa fa-usd"></i>400</li>
                        <li class="list-group-item"><i class="fa fa-gamepad"></i>&nbsp;Juego 3&nbsp;&nbsp;<i class="fa fa-usd"></i>200</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-2 d-flex justify-content-center">
            <img class="img-responsive" src="http://via.placeholder.com/120x1000" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

