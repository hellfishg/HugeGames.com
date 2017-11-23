<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="PerfilNew.aspx.cs" Inherits="PerfilNew" %>

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
                        <label>Nombre</label>
                        <input type="text" class="form-control" placeholder="Tu Nombre" />
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" placeholder="Tu Email" />
                    </div>
                    <div class="jumbotron mb-0">
                        <h4 class="display-6"><i class="fa fa-credit-card"></i>&nbsp;Información de tu tarjeta</h4>
                        <p class="lead text-center font-weight-bold">XXXX&nbsp;&nbsp;XXXX&nbsp;&nbsp;XXXX&nbsp;&nbsp;1234</p>
                        <hr class="my-4">
                        <p class="text-center">VISA</p>
                        <button type="button" class="btn btn-black btn-sm pull-right">Actualizar</button>
                    </div>
                    <div class="form-group">
                        <label>Contraseña</label>
                        <input type="password" class="form-control" placeholder="Tu Clave" />
                    </div>
                    <div class="form-group">
                        <label>Repetir Contraseña</label>
                        <input type="text" class="form-control" placeholder="Repetir Clave" />
                    </div>
                </div>
                <div class="card-footer">
                    <button type="button" class="btn btn-primary">Actualizar datos</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

