<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            color: #0000CC;
        }
        .auto-style3 {
            font-size: x-large;
            text-align: right;
        }
        .auto-style4 {
            font-weight: bold;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Ingrese sus Credenciales de Acceso</strong></td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Login:</strong></td>
                <td>
                    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLogin" CssClass="auto-style4" ErrorMessage="*Error en Login" ValidationExpression="^\w+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Password:</strong></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" CssClass="auto-style4" ErrorMessage="*Error en Password" ValidationExpression="^\w+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" style="font-weight: 700; font-size: large" Text="Ingresar" />
                    <asp:Button ID="btnSalir" runat="server" style="font-weight: 700; font-size: large" Text="Salir" />
                    <asp:Label ID="lblMensajes" runat="server" style="font-weight: 700; color: #FF3300; font-size: medium"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
