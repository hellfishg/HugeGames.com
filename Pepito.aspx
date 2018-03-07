<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="Pepito.aspx.cs" Inherits="Pepito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="row">
        <asp:Repeater ID="rpJuegos" runat="server">
         <ItemTemplate>
            <h1> <%# Eval("Descripcion_JUE") %></h1>
        </ItemTemplate>
        </asp:Repeater>
        

    </div>               

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

