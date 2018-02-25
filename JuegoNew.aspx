<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="JuegoNew.aspx.cs" Inherits="CarritoComprasNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <asp:Repeater ID="rpJuego" runat="server" OnItemCommand="rpJuego_ItemCommand">
            <ItemTemplate>
                <div class="col-md-9">
                    <h3 class="mb-4"><%# Eval("Nombre_JUE") %></h3>
                    <div class="embed-responsive embed-responsive-16by9 mb-3">
                        <iframe class="embed-responsive-item" src='<%# Eval("Link_JUE") %>' allowfullscreen></iframe>
                    </div>
                    <p>
                        <%# Eval("Descripcion_JUE") %> 
                    </p>
                </div>
                <div class="col-md-3">
                    <div class="card mt-5">
                        <img class="card-img-top" src='<%# Eval("ImagenGrande_JUE") %>' alt="Card image cap">
                        <div class="card-body">
                            <h6 class="card-title"><%# Eval("Nombre_JUE") %></h6>
                        </div>
                        <div class="card-footer">
                            <asp:LinkButton runat="server" CssClass="btn btn-primary btn-sm pull-right" CommandName="Carrito" CommandArgument='<%# Eval("Nombre_JUE") %>'><i class="fa fa-shopping-cart"></i></asp:LinkButton>
                            <span class="pull-right">Precio&nbsp;<i class="fa fa-dollar"></i><%# Eval("Precio_JUE") %>&nbsp;</span>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

