<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Store.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container">

        <div class="panel panel-default">
            <div class="panel-body">

                <div class="alert alert-info">
                    <strong>Registrate!</strong> Favor de registrarse para poder iniciar sesion.
               
                </div>

                <div class="col-xs-12 col-sm-6">
                    <div class="form-group">
                        <label for="email">Nombre:</label>
                        <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Apellido:</label>

                        <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Usuario:</label>
                        <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6">
                    <div class="form-group">
                        <label for="email">Fecha de nacimiento:</label>
                        <asp:TextBox ID="txtFecha" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Puesto:</label>
                        <asp:TextBox ID="txtPuesto" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Correo:</label>
                        <asp:TextBox ID="txtCorreo" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="col-xs-12">
                    <hr />
                  
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" OnClick="btnSave" Text="Guardar" />
                    <asp:Button ID="btnClean" runat="server" CssClass="btn btn-primary" OnClick="btnLimpiarForm" Text="Limpiar" />
                </div>

            </div>
        </div>




        <div class="panel panel-default">
            <div class="panel-body">
                <p>Usuarios registrados</p>
                <asp:GridView ID="GridView1" runat="server"
                    CssClass="table table-hover" GridLines="None"
                    AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="nombre" HeaderText="Nombre" Visible="true" />
                        <asp:BoundField DataField="correo" HeaderText="Apellido" />
                        <asp:BoundField DataField="correo" HeaderText="Usuario" />
                        <asp:BoundField DataField="correo" HeaderText="Fecha de nacimiento" />
                        <asp:BoundField DataField="correo" HeaderText="Puesto" />
                        <asp:BoundField DataField="correo" HeaderText="Correo" />
                    </Columns>
                    <RowStyle CssClass="cursor-pointer" />
                </asp:GridView>
            </div>
        </div>

    </div>

</asp:Content>
