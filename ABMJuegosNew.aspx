<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="ABMJuegosNew.aspx.cs" Inherits="ABMJuegosNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h5>Alta, Baja y Modificación de Juegos</h5>
            <div class="card text-white bg-dark">
                <div class="card-header">
                    <h5 class="text-white">Datos del juego</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Nombre</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-gamepad"></i>
                                </span>
                                <input type="text" id="txtNombre" runat="server" class="form-control" placeholder="Nombre del juego" />
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Link</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-link"></i>
                                </span>
                                <input type="text" id="txtLink" runat="server" class="form-control" placeholder="www.youtube.com/embed/{id del video}" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Imagen Grande</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-picture-o"></i>
                                </span>
                                <input type="text" id="txtImgGrande" runat="server" class="form-control" placeholder="via.placeholder.com/1280x720" />
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Imagen Chica</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-picture-o"></i>
                                </span>
                                <input type="text" id="txtImgChica" runat="server" class="form-control" placeholder="via.placeholder.com/800x500" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Descripcion</label>
                            <textarea id="txtDescripcion" runat="server" class="form-control" placeholder="Breve descripcion del juego" rows="3" />
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Precio</label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-dollar"></i>
                                </span>
                                <input type="text" id="txtPrecio" runat="server" class="form-control" placeholder="Precio del juego" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
</asp:Content>

