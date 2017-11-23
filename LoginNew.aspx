<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="LoginNew.aspx.cs" Inherits="LoginNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row d-flex justify-content-center">
        <div class="col-md-8">
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 class="display-6 text-center mb-3">Inicia sesión para continuar</h1>
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="email" class="form-control" placeholder="Tu email"/>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="password" class="form-control" placeholder="Tu clave"/>
                    </div>
                    <button type="button" class="btn btn-primary btn-sm pull-right"><a href="PerfilNew.aspx">Ir al perfil</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

