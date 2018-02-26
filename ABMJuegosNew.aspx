<%@ Page Title="" Language="C#" MasterPageFile="~/HomeNew.master" AutoEventWireup="true" CodeFile="ABMJuegosNew.aspx.cs" Inherits="ABMJuegosNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <h5>Alta, Baja y Modificación de Juegos</h5>
            <div class="card bg-light mb-4">
                <div class="card-header">
                    <h5>Datos del juego</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Nombre</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-gamepad"></i>
                                    </span>
                                </div>
                                <input type="text" id="txtNombre" runat="server" class="form-control" placeholder="Nombre del juego" />
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Link</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-link"></i>
                                    </span>
                                </div>
                                <input type="text" id="txtLink" runat="server" class="form-control" placeholder="http://www.youtube.com/embed/{id del video}" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Imagen Grande</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                </div>
                                <input type="text" id="txtImgGrande" runat="server" class="form-control" placeholder="http://via.placeholder.com/1280x720" />
                            </div>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Imagen Chica</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-picture-o"></i>
                                    </span>
                                </div>
                                <input type="text" id="txtImgChica" runat="server" class="form-control" placeholder="http://via.placeholder.com/800x500" />
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
                                <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="fa fa-dollar"></i>
                                    </span>
                                </div>
                                <input type="text" id="txtPrecio" runat="server" class="form-control" placeholder="Precio del juego" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Requisitos</label>
                            <textarea id="txtRequisitos" runat="server" class="form-control" placeholder="Requisitos del juego" rows="3" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="custom-control custom-toggle my-2">
                                <input type="checkbox" id="chkBorrado" runat="server" name="chkBorrado" class="custom-control-input">
                                <label class="custom-control-label" for='<%= chkBorrado.ClientID %>'>Borrado</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <button type="button" class="btn btn-primary float-right" runat="server" id="btnGuardar" onserverclick="btnGuardar_ServerClick"><i class="fa fa-download"></i>&nbsp;Guardar&nbsp;<%= (hfExiste.Value == "0") ? "nuevo" : "cambios" %></button>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:HiddenField ID="hfExiste" runat="server" Value="0" />
                </div>
            </div>
            <div class="card bg-light">
                <div class="card-header">
                    <h5>Listado de juegos</h5>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="tblJuegos" class="table table-sm table-striped table-bordered bg-white">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Nombre</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Borrado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpJuegos" runat="server" OnItemCommand="rpJuegos_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <th>
                                                <asp:LinkButton runat="server" CommandName="Editar" CommandArgument='<%# Eval("nombre") %>' CssClass="btn btn-primary btn-sm"><i class="fa fa-edit"></i></asp:LinkButton></th>
                                            <td><%# Eval("nombre") %></td>
                                            <td><%# Eval("descripcion") %></td>
                                            <td><%# Eval("precio") %></td>
                                            <td><%# Eval("borrado") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer"></div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="Server">
    <script>
        $(function () {
            rpDataTable('tblJuegos');
        });
    </script>
</asp:Content>

