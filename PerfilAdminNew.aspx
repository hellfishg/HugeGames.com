<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="PerfilAdminNew.aspx.cs" Inherits="PerfilAdminNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="card bg-dark text-white">
                <div class="card-header">
                    <h4 class="text-white"><i class="fa fa-user"></i>&nbsp;Datos Personales</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Usuario</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-user"></i>
                            </span>
                            <input type="text" class="form-control" placeholder="Tu Usuario" runat="server" id="txtUsuario" disabled="disabled" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-envelope-o"></i>
                            </span>
                            <input type="email" class="form-control" placeholder="Tu Email" runat="server" id="txtEmail" />
                        </div>                      
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-lock"></i>
                            </span>
                            <input type="password" class="form-control" placeholder="Tu Clave" runat="server" id="txtPwd" />
                        </div>                     
                    </div>
                    <div class="form-group">
                        <label>Repetir Contraseña</label>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-lock"></i>
                            </span>
                            <input type="text" class="form-control" placeholder="Repetir Clave" runat="server" id="txtRPwd" />
                        </div>   
                    </div>
                </div>
                <div class="card-footer">
                    <button type="button" class="btn btn-primary" runat="server" id="btnDatos" onserverclick="btnDatos_ServerClick">Actualizar datos</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" Runat="Server">
</asp:Content>

