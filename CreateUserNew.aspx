<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="CreateUserNew.aspx.cs" Inherits="CreateUserNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="card bg-light">
                <div class="card-header">
                    <h4><i class="fa fa-user"></i>&nbsp;Datos Personales</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label>Usuario</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-user"></i>
                                </span>
                            </div>
                            <input type="text" class="form-control" placeholder="Tu Nombre" runat="server" id="txtUsuario"  />
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-envelope-o"></i>
                                </span>
                            </div>
                            <input type="email" class="form-control" placeholder="Tu Email" runat="server" id="txtEmail" />
                        </div>
                    </div>
                    <div class="jumbotron mb-0">
                        <h4 class="display-6"><i class="fa fa-credit-card"></i>&nbsp;Información de tu tarjeta</h4>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-5">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fa fa-credit-card"></i>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control lead text-center font-weight-bold" runat="server" id="txtNumTarjeta" />
                                </div>
                            </div>
                        </div>
                        <hr class="my-4">
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-5">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="fa fa-credit-card-alt"></i>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control text-center" runat="server" id="txtNombreTarjeta" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-lock"></i>
                                </span>
                            </div>
                            <input type="password" class="form-control" placeholder="Tu Clave" runat="server" id="txtPwd" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Repetir Contraseña</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="fa fa-lock"></i>
                                </span>
                            </div>
                            <input type="password" class="form-control" placeholder="Repetir Clave" runat="server" id="txtRPwd" />
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                   <button type="button" class="btn btn-primary" runat="server" id="btnCrear" onserverclick="btnCrear_ServerClick" >Crear usuario</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>
