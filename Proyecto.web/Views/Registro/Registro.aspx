<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto.web.Views.Registro.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Registro</title>
    <!-- Bootstrap core CSS-->
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom fonts for this template-->
    <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom styles for this template-->
    <link href="../../css/sb-admin.css" rel="stylesheet" />
    <!-- Bootstrap core JavaScript-->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>
</head>
<body class="bg-dark">

    <div class="container">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Registrar una cuenta</div>
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:Label ID="LblPrimerNombre" runat="server" Text="Primer Nombre"></asp:Label>
                                    <asp:TextBox ID="TxtPrimernombre" runat="server" CssClass="form-control" required="required" autofocus="autofocus"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:Label ID="LblApellido" runat="server" Text="Apellido"></asp:Label>
                                    <asp:TextBox ID="TxtApellido" runat="server" CssClass="form-control" required="required" autofocus="autofocus"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <asp:Label ID="LblEmailReg" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="TxtEmailReg" runat="server" CssClass="form-control" required="required" autofocus="autofocus"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:Label ID="LblPasswordReg" runat="server" Text="Contraseña"></asp:Label>
                                    <asp:TextBox ID="TxtPasswordReg" runat="server" CssClass="form-control" required="required" autofocus="autofocus" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:Label ID="LblComfirmarPassword" runat="server" Text="Comfirmar Contraseña"></asp:Label>
                                    <asp:TextBox ID="TxtComfirmarPassword" runat="server" CssClass="form-control" required="required" autofocus="autofocus" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:Button ID="BtnAceptarReg" runat="server" CssClass="btn btn-primary btn-block" Text="Aceptar" />
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="../Login/Login.aspx">Iniciar Sesion</a>
                    <a class="d-block small" href="#">Olvido La Contraseña?</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
