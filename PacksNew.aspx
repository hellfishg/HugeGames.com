<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="PacksNew.aspx.cs" Inherits="PacksNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <asp:Repeater ID="pack1" runat="server">
            <ItemTemplate>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>PACK 1</h5>
                        </div>
                        <div class="card-body">
                            <div class="row d-flex justify-content-center">
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen1")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego1Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen2")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego2Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen3")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego3Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen4")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego4Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen5")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego5Nom_PDJ")%> </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="button" class="btn btn-primary btn-sm pull-right"><i class="fa fa-shopping-cart"></i></button>
                            <span class="pull-right">Precio&nbsp;<i class="fa fa-dollar"></i><%# Eval("Precio_JUE")%>&nbsp;</span>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <div class="row">
        <asp:Repeater ID="pack2" runat="server">
            <ItemTemplate>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>PACK 2</h5>
                        </div>
                        <div class="card-body">
                            <div class="row d-flex justify-content-center">
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen1")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego1Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen2")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego2Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen3")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego3Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen4")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego4Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen5")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego5Nom_PDJ")%> </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="button" class="btn btn-primary btn-sm pull-right"><i class="fa fa-shopping-cart"></i></button>
                            <span class="pull-right">Precio&nbsp;<i class="fa fa-dollar"></i><%# Eval("Precio_JUE")%>&nbsp;</span>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <div class="row">
        <asp:Repeater ID="pack3" runat="server">
            <ItemTemplate>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h5>PACK 3</h5>
                        </div>
                        <div class="card-body">
                            <div class="row d-flex justify-content-center">
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen1")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego1Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen2")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego2Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen3")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego3Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen4")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego4Nom_PDJ")%></h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="card">
                                        <img class="card-img-top" src=<%# Eval("Imagen5")%> alt="Card image cap">
                                        <div class="card-body">
                                            <h6 class="card-title"><%# Eval("Juego5Nom_PDJ")%> </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="button" class="btn btn-primary btn-sm pull-right"><i class="fa fa-shopping-cart"></i></button>
                            <span class="pull-right">Precio&nbsp;<i class="fa fa-dollar"></i><%# Eval("Precio_JUE")%>&nbsp;</span>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>
