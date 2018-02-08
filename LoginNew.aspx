<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="LoginNew.aspx.cs" Inherits="LoginNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row d-flex justify-content-center">
        <div class="col-md-8">
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 class="display-6 text-center mb-3" runat="server" id="lblEstado">Inicia sesión para continuar</h1>
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="email" class="form-control" placeholder="Tu email" runat="server" id="txtEmail"/>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="password" class="form-control" placeholder="Tu clave" runat="server" id="txtPwd"/>
                    </div>
                    <button type="button" class="btn btn-primary btn-sm pull-right" runat="server" id="btnLogin" onserverclick="btnLogin_ServerClick"></button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

