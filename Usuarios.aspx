<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Usuarios.aspx.cs" Inherits="Usuarios" %>

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
            color: #000099;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            font-size: large;
            text-align: right;
        }
        .auto-style4 {
            font-size: large;
            font-weight: bold;
            text-align: right;
        }
        .auto-style5 {
            font-size: large;
            font-weight: bold;
            text-align: left;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
        .auto-style7 {
            font-weight: bold;
        }
        .auto-style8 {
            color: #FF0000;
        }
        .auto-style9 {
            color: #990000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong>Mantenimiento de Usuarios</strong></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="lblUsuario" runat="server" CssClass="auto-style9" Text="Usuario activo: "></asp:Label>
                    </strong>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>IdUsuario:</strong></td>
                <td>
                    <asp:TextBox ID="txtIdUsuario" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" style="font-weight: 700" Text="Buscar" />
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdUsuario" CssClass="auto-style8" ErrorMessage="*Error, sólo se permite números" ValidationExpression="^\d{0,12}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Nombre:</strong></td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server" Width="314px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtNombre" CssClass="auto-style8" ErrorMessage="*Error, sólo se permite letras" ValidationExpression="^[A-Za-záéíóúñÑ ]{0,50}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Login:</td>
                <td>
                    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtLogin" CssClass="auto-style8" ErrorMessage="*Error, sólo se permite letras y números" ValidationExpression="^[A-Za-záéíóúñÑ0-9]{0,25}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPassword" CssClass="auto-style8" ErrorMessage="*Error, sólo se permite letras, números y #/?¿*$@" ValidationExpression="^[A-Za-záéíóúñÑ0-9#/?¿*$@]{0,25}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Estado:</td>
                <td>
                    <asp:CheckBox ID="chkEstado" runat="server" style="font-weight: 700" Text="Activo" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="308px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtEmail" CssClass="auto-style8" ErrorMessage="*Error en formato de correo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Privilegio:</td>
                <td>
                    <asp:DropDownList ID="ddlPrivilegios" runat="server" Height="16px" Width="201px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Fecha:</td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Button ID="btnAgregar" runat="server" CssClass="auto-style7" Text="Agregar" OnClick="btnAgregar_Click" />
                    <asp:Button ID="btnModificar" runat="server" CssClass="auto-style7" Text="Modificar" OnClick="btnModificar_Click" />
                    <asp:Button ID="btnEliminar" runat="server" CssClass="auto-style7" Text="Eliminar" OnClick="btnEliminar_Click" />
                    <asp:Button ID="btnCerrar" runat="server" CssClass="auto-style7" Text="Cerrar" OnClick="btnCerrar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Label ID="lblMensajes" runat="server" style="text-align: left; color: #FF0000"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
