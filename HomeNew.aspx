<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="HomeNew.aspx.cs" Inherits="HomeNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .hometron{
            height:40em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="jumbotron bg-light d-flex justify-content-center mt-5 hometron">
        <div class="text-center align-self-center">
            <i class="fa fa-gamepad fa-5x"></i>
            <h1 class="mb-2 display-4">Huge Games</h1>
            <h5 class="mb-0 lead">Todos los juegos en un solo lugar</h5>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

