<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
            height: 23px;
            width: 660px;
        }
        .auto-style3 {
            width: 134px;
        }
        .auto-style4 {
            margin-left: 40px;
        }
        .auto-style5 {
            height: 62px;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
<table class="auto-style1">
    <tr>
        <td class="auto-style3" rowspan="7">
        <asp:Image ID="imgBannerIzquierdo" runat="server" ImageUrl="Imagenes\Banner.jpg" Width="132px" />
        </td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td rowspan="7">
        <asp:Image ID="imgBannerDerecho" runat="server" ImageUrl="Imagenes\Banner.jpg" Width="132px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Nombre" Font-Size="X-Large"></asp:Label>
        </td>
        <td class="auto-style2">&nbsp;<asp:TextBox ID="txtNombre" runat="server" Width="203px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        </td>
        <td class="auto-style2">
        <asp:Button ID="btnActualizarNombre" runat="server" Text="Actualizar" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Mail"></asp:Label>
        </td>
        <td class="auto-style2">
        <asp:TextBox ID="txtMail" runat="server" Width="203px"></asp:TextBox>
        </td>
        <td class="auto-style2">
        <asp:Button ID="btnActualizarMail" runat="server" Text="Actualizar" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4" colspan="3" style="font-size: large; bottom: auto;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Información de la tarjeta de crédito</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblTarjetaCredito" runat="server" Font-Size="Large" Text="Aca va a ir el nro de la tarjeta de crédito"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><asp:Label ID="Label3" runat="server" Text="Nueva contraseña" Font-Size="X-Large"></asp:Label>
        </td>
        <td class="auto-style4"><asp:TextBox ID="txtPass" runat="server" Width="203px"></asp:TextBox>
        </td>
        <td class="auto-style4" rowspan="2">
        <asp:Button ID="btnActualizarPass" runat="server" Text="Actualizar" Width="121px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style4"><asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Repetir contraseña"></asp:Label>
        </td>
        <td class="auto-style4">
        <asp:TextBox ID="txtRepetirPass" runat="server" Width="203px"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>

