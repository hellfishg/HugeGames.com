<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="JuegoNew.aspx.cs" Inherits="CarritoComprasNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-9">
            <h3 class="mb-4">For Honor</h3>
            <div class="embed-responsive embed-responsive-16by9 mb-3">
                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/y1HkuGUaNBY" allowfullscreen></iframe>
            </div>
            <p>
                For Honor es un videojuego de acción en tercera persona que destaca por su sistema de combate tridireccional. Ha sido desarrollado por Ubisoft Montreal y distribuido por Ubisoft para las plataformas Microsoft Windows, PlayStation 4 y Xbox One
            </p>
        </div>
        <div class="col-md-3">
            <div class="card mt-5">
                <img class="card-img-top" src="http://via.placeholder.com/800x500" alt="Card image cap">
                <div class="card-body">
                    <h6 class="card-title">For Honor</h6>
                </div>
                <div class="card-footer">
                    <button type="button" class="btn btn-primary btn-sm pull-right"><i class="fa fa-shopping-cart"></i></button>
                    <span class="pull-right">Precio&nbsp;<i class="fa fa-dollar"></i>500&nbsp;</span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

