<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="SoftProgWA.InicioSesion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Fonts/css/all.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/jquery-3.7.1.js"></script>
    <script src="Scripts/SoftProg/iniciarSesion.js"></script>
    <title>Inicio de Sesión</title>

    <style>
        /* Body */
        body {
            background: #f8f8f8; /* Fondo general */
            font-family: Arial, sans-serif;
        }

        /* Formulario centrado */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 380px;
            padding: 20px;
        }

        .card-title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        /* Campos de entrada */
        .form-control {
            background-color: #f5f5f5;
            border-radius: 8px;
            border: 1px solid #ddd;
            padding: 12px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #73866d; /* Verde oliva en focus */
            box-shadow: 0 0 5px rgba(115, 134, 109, 0.5);
        }

        /* Botón de ingreso */
        .btn-main {
            background: #73866d; /* Verde oliva */
            color: white;
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .btn-main:hover {
            background: #5f6f5a; /* Tonalidad más oscura del verde */
        }

        .btn-main:active {
            transform: translateY(2px);
        }

        /* Enlace de olvido contraseña */
        .forgot-link {
            font-size: 14px;
            color: #73866d;
        }

        .forgot-link:hover {
            text-decoration: underline;
        }

        /* Mensaje de error */
        .error-message {
            color: #ff4c4c;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="card">
            <h3 class="card-title">Inicio de Sesión</h3>

            <form id="formLogin" runat="server">
                <!-- Campo de Usuario -->
                <div class="form-group">
                    <label for="txtUsername">Usuario</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Ingrese su usuario" />
                </div>

                <!-- Campo de Contraseña -->
                <div class="form-group mt-3">
                    <label for="txtPassword">Contraseña</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Ingrese su contraseña" />
                </div>

                <!-- Mensaje de error -->
                <div class="error-message">
                    <asp:Label ID="lblMensaje" runat="server" EnableViewState="false"></asp:Label>
                </div>

                <!-- Botón de Ingreso -->
                <div class="text-center mt-3">
                    <asp:Button ID="btnLogin" runat="server" Text="Ingresar" CssClass="btn-main" OnClick="btnLogin_Click" />
                </div>
            </form>

            <!-- Enlace de Recuperar Contraseña -->
            <div class="text-center mt-3">
                <small><a href="#" class="forgot-link">¿Olvidaste tu contraseña?</a></small>
            </div>
        </div>
    </div>
</body>
</html>
