<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="ABMPacksNew.aspx.cs" Inherits="ABMPacksNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="jumbotron bg-light d-flex justify-content-left mt-5 hometron">
        <div">
            <h2>Pack 1</h2>
            <asp:DropDownList ID="ddlJuego1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego4" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego5" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HugeGamesConnectionString %>" SelectCommand="SELECT [Nombre_JUE] FROM [Juegos] WHERE ([Borrado_JUE] = @Borrado_JUE)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="Borrado_JUE" Type="Int32" />
                </SelectParameters>
        </asp:SqlDataSource>
&nbsp;
            <asp:Label ID="Label1" runat="server" Text="$"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtPrecio1" runat="server" Width="86px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModificar1" runat="server" Text="Modificar" OnClick="btnModificar1_Click" />
            <br />
            <h2>Pack 2</h2>
            <asp:DropDownList ID="ddlJuego6" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego7" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego8" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego9" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego10" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;
            <asp:Label ID="Label2" runat="server" Text="$"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtPrecio2" runat="server" Width="86px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModificar2" runat="server" Text="Modificar" OnClick="btnModificar2_Click" />
            <br />
            <h2>Pack 3</h2>
            <asp:DropDownList ID="ddlJuego11" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego12" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego13" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego14" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DDLJuego15" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre_JUE" DataValueField="Nombre_JUE">
            </asp:DropDownList>
&nbsp;
            <asp:Label ID="Label3" runat="server" Text="$"></asp:Label>
&nbsp;
            <asp:TextBox ID="txtPrecio3" runat="server" Width="86px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModificar3" runat="server" Text="Modificar" OnClick="btnModificar3_Click" />
            <p>&nbsp;</p>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

