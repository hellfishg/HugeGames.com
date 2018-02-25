<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="CatalogoNew.aspx.cs" Inherits="CatalogoNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <asp:Repeater ID="rpJuegos" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-2">
                            <div class="card mb-3">
                                <img class="card-img-top" src='<%# Eval("ImagenChica_JUE") %>' alt="Card image cap">
                                <div class="card-body">
                                    <h6><a href='<%# "JuegoNew.aspx?game=" + Eval("Nombre_JUE") %>'><%# Eval("Nombre_JUE") %></a></h6>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

