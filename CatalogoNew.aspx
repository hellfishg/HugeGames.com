<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="CatalogoNew.aspx.cs" Inherits="CatalogoNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-9">
            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-3">
                        <img class="card-img-top" src="http://via.placeholder.com/800x500" alt="Card image cap">
                        <div class="card-body">
                            <h6><a href="JuegoNew.aspx">For Honor</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <img class="card-img-top" src="http://via.placeholder.com/800x500" alt="Card image cap">
                        <div class="card-body">
                            <h6><a href="JuegoNew.aspx">FIFA 12</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <img class="card-img-top" src="http://via.placeholder.com/800x500" alt="Card image cap">
                        <div class="card-body">
                            <h6><a href="JuegoNew.aspx">FIFA 14</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <img class="card-img-top" src="http://via.placeholder.com/800x500" alt="Card image cap">
                        <div class="card-body">
                            <h6><a href="JuegoNew.aspx">FIFA 15</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <img class="card-img-top" src="http://via.placeholder.com/800x500" alt="Card image cap">
                        <div class="card-body">
                            <h6><a href="JuegoNew.aspx">FIFA 16</a></h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <img class="card-img-top" src="http://via.placeholder.com/800x500" alt="Card image cap">
                        <div class="card-body">
                            <h6><a href="JuegoNew.aspx">FIFA 17</a></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card bg-dark text-light">
                <div class="card-header">
                    <h5 class="text-light">Ordenar por</h5>
                </div>
                <div class="card-body">
                    <ul>
                        <li>
                            <input type="checkbox" />
                            Precio</li>
                        <li>
                            <input type="checkbox" />
                            Género</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

