<%@ Page Title="" Language="C#" MasterPageFile="~/Resources/Template/Template.Master" AutoEventWireup="true" CodeBehind="PosiblesClientes.aspx.cs" Inherits="Proyecto.web.Views.PosiblesClientes.PosiblesClientes" %>
<asp:Content ID="contentHeader" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form" runat="server">
    <div class="mx-auto mt-5">
        <%-- Primer seccion --%>
        <div class="form-group">
                <div class="form-row">
                    <div class="col-md-12">
                        <h3>
                            <b>
                                Posibles Clientes
                            </b>
                            <asp:Label runat="server" ID="lblOpcion" visible="false"></asp:Label>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblIdentificacion" Text="Identificacion"></asp:Label>
                    <asp:TextBox runat="server" ID="txtIdentificacion" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-3">
                     <asp:Label runat="server" ID="lblEmpresa" Text="Empresa"></asp:Label>
                    <asp:TextBox runat="server" ID="txtEmpresa" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-3">
                     <asp:Label runat="server" ID="lblPrimerNombre" Text="Primer Nombre"></asp:Label>
                    <asp:TextBox runat="server" ID="txtPrimerNombre" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-3">
                     <asp:Label runat="server" ID="lblSegundoNombre" Text="Segundo Nombre"></asp:Label>
                    <asp:TextBox runat="server" ID="txtSegundoNombre" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            </div>
            <%-- segunda seccion --%>
            <div class="form-group">
            <div class="form-row">
                <div class="col-md-3">
                    <asp:Label runat="server" ID="lblPrimerApellido" Text="Primer Apellido"></asp:Label>
                    <asp:TextBox runat="server" ID="txtPrimerApellido" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-3">
                     <asp:Label runat="server" ID="lblSegundoApellido" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox runat="server" ID="txtSegundoApellido" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-3">
                     <asp:Label runat="server" ID="lblDireccion" Text="Direccion"></asp:Label>
                    <asp:TextBox runat="server" ID="txtxDireccion" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="col-md-3">
                     <asp:Label runat="server" ID="lblTelefono" Text="Telefono"></asp:Label>
                    <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <%-- tercera seccion --%>
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-12">
                        <asp:Label runat="server" ID="lblCorreo" Text="correo"></asp:Label>
                        <asp:TextBox runat="server" ID="txtCorreo" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <%-- cuarta seccion --%>
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-12">
                        <asp:Button runat="server" ID="btnGuardar" text="Guardar" CssClass="btn btn-primary"  OnClick="btnGuardar_Click"/>
                        <asp:Button runat="server" ID="btnCancelar" text="Cancelar" CssClass="btn btn-primary" OnClick="btnCancelar_Click" />
                    </div>
                </div>
            </div>
            <%-- quinta seccion --%>
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-12">
                        <asp:Label runat="server" ID="lblSbtitulo" Text="Resultado"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-12" style="overflow:auto">
                        <asp:GridView runat="server" 
                            Id="gvwDatos"
                            Width="100%" 
                            AutoGenerateColumns="False" 
                            EmptyDataText="no se encontraron registros" 
                            BackColor="White" 
                            BorderColor="#CCCCCC" 
                            BorderStyle="None" 
                            BorderWidth="1px" 
                            CellPadding="3" OnRowCommand="gvwDatos_RowCommand"
                            >

                            <Columns>
                                <%-- Representacion de datos en controle web--%>
                                <asp:TemplateField HeaderText="Identificacion">
                                    <ItemTemplate>
                                        <asp:Label runat="server" ID="lblIdentificacion" Text='<%# Bind("Identificacion")%>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <%-- representacion de datos en celdas--%>
                                
                                <asp:BoundField HeaderText="Empresa" DataField="Empresa"/>
                                <asp:BoundField HeaderText="primer nombre" DataField="PrimerNombre"/>
                                <asp:BoundField HeaderText="segundo nombre" DataField="SegundoNombre"/>
                                <asp:BoundField HeaderText="primer apellido" DataField="PrimerApellido"/>
                                <asp:BoundField HeaderText="segundo apellido" DataField="SegundoApellido"/>
                                <asp:BoundField HeaderText="direccion" DataField="Direccion"/>
                                <asp:BoundField HeaderText="telefono" DataField="Telefono"/>
                                <asp:BoundField HeaderText="correo" DataField="Correo"/>
                                <%-- editar  --%>
                                <asp:TemplateField HeaderText="Editar">
                                    <ItemTemplate>
                                       <asp:ImageButton id="ibEdit" runat="server" ImageUrl="~/Resources/Images/edit.png" CommandName="Editar" CommandArgument="<%# ((GridViewRow)Container).RowIndex%>" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>
                                 <%-- eliminar  --%>
                                <asp:TemplateField HeaderText="Editar">
                                    <ItemTemplate>
                                       <asp:ImageButton id="ibEliminar" runat="server" ImageUrl="~/Resources/Images/eliminar.png" CommandName="Eliminar" CommandArgument="<%# ((GridViewRow)Container).RowIndex%>" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
     </form>
</asp:Content>