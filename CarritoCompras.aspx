<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="CarritoCompras.aspx.cs" Inherits="CarritoCompras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            width: 24px;
        }
        .auto-style3 {
            width: 645px;
        }
        .auto-style4 {
            width: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="1" class="auto-style1">
        <tr>
            <td class="auto-style2" rowspan="4">
                <asp:Image ID="Image1" runat="server" ImageUrl="Imagenes\Banner02.jpg" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4" rowspan="4">
                <asp:Image ID="Image2" runat="server" Height="559px" ImageUrl="Imagenes\Banner03.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

