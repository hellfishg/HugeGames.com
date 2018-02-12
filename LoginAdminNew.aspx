<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="LoginAdminNew.aspx.cs" Inherits="LoginAdminNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row d-flex justify-content-center">
        <div class="col-md-8">
            <div class="jumbotron jumbotron-fluid bg-dark text-white">
                <div class="container">
                    <h1 class="display-6 text-center mb-3 text-white">Inicia sesión como Administrador</h1>
                    <div class="form-group">
                        <label>Usuario</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="email" class="form-control" placeholder="Tu usuario" runat="server" id="txtEmail" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <div class="input-group">
                            <div class="input-group-addon"><i class="fa fa-lock"></i></div>
                            <input type="password" class="form-control" placeholder="Tu clave" runat="server" id="txtPwd" />
                        </div>
                    </div>
                    <button type="button" class="btn btn-primary btn-sm pull-right" runat="server" id="btnLogin" onserverclick="btnLogin_ServerClick">Acceder</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

