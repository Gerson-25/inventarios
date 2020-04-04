<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Proveedores.aspx.cs" Inherits="Proveedores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            text-align: center;
            color: #0033CC;
            font-size: x-large;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            height: 23px;
            text-align: right;
        }
        .auto-style6 {
            color: #FF0000;
        }
        .auto-style7 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2"><strong>Mantenimiento de Proveedores</strong></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>IdProveedor:</strong></td>
                <td>
                    <asp:TextBox ID="txtIdProveedor" runat="server"></asp:TextBox>
                    <strong>
                    <asp:Button ID="btnBuscar" runat="server" CssClass="auto-style7" Text="Buscar" OnClick="btnBuscar_Click" />
                    <asp:RegularExpressionValidator ID="rexIdProveedor" runat="server" ControlToValidate="txtIdProveedor" CssClass="auto-style6" ErrorMessage="*Error en código de proveedor, sólo se permiten dígitos (max. 12)" ValidationExpression="^\d{0,12}$"></asp:RegularExpressionValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Nombre de la Empresa:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmpresa" runat="server" Width="318px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexEmpresa" runat="server" ControlToValidate="txtEmpresa" CssClass="auto-style6" ErrorMessage="*Error en nombre de proveedor, sólo se permiten letras, números y guiones (max. 100)" ValidationExpression="^([A-Za-z0-9 -áéíóúñÑÁÉÍÓÚ]*){0,100}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Contacto:</strong></td>
                <td>
                    <asp:TextBox ID="txtContacto" runat="server" Width="318px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexContacto" runat="server" ControlToValidate="txtContacto" CssClass="auto-style6" ErrorMessage="*Error en nombre de contacto, sólo se permiten letras  (max. 50)" ValidationExpression="^([A-Za-z áéíóúñÑÁÉÍÓÚ]*){0,50}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Teléfono:</strong></td>
                <td>
                    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexTelefono" runat="server" ControlToValidate="txtTelefono" CssClass="auto-style6" ErrorMessage="*Error en teléfono, sólo se permiten ldígitos (max. 8)" ValidationExpression="^\d{8}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Dirección:</strong></td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server" Width="318px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexDireccion" runat="server" ControlToValidate="txtDireccion" CssClass="auto-style6" ErrorMessage="*Error en dirección del proveedor, sólo se permiten letras, números y guiones (max. 100)" ValidationExpression="^([A-Za-z0-9 -áéíóúñÑÁÉÍÓÚ]*){0,100}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Página Web:</strong></td>
                <td>
                    <asp:TextBox ID="txtPaginaWeb" runat="server" Width="318px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexPaginaWeb" runat="server" ControlToValidate="txtPaginaWeb" CssClass="auto-style6" ErrorMessage="*Error en formato de PaginaWeb" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Email:</strong></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="318px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style6" ErrorMessage="*Error en formato de Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Registro:</strong></td>
                <td>
                    <asp:TextBox ID="txtRegistro" runat="server"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexRegistro" runat="server" ControlToValidate="txtRegistro" CssClass="auto-style6" ErrorMessage="*Error en formato de Registro" ValidationExpression="^(\d{1,6}-\d)?$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Nit:</strong></td>
                <td>
                    <asp:TextBox ID="txtNit" runat="server" Width="184px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexNit" runat="server" ControlToValidate="txtNit" CssClass="auto-style6" ErrorMessage="*Error en formato de Nit" ValidationExpression="^(\d{4}-\d{6}-\d{3}-\d)?$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Razón Social:</strong></td>
                <td>
                    <asp:TextBox ID="txtRazonSocial" runat="server" Width="318px"></asp:TextBox>
                    <strong>
                    <asp:RegularExpressionValidator ID="rexRazonSocial" runat="server" ControlToValidate="txtRazonSocial" CssClass="auto-style6" ErrorMessage="*Error en razón social de proveedor, sólo se permiten letras, números y guiones (max. 100)" ValidationExpression="^([A-Za-z0-9 -áéíóúñÑÁÉÍÓÚ]*){0,100}$"></asp:RegularExpressionValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Estado:</strong></td>
                <td><strong>
                    <asp:CheckBox ID="chkEstado" runat="server" Text="Activo" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Fecha:</strong></td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="btnAgregar" runat="server" CssClass="auto-style7" Text="Agregar" OnClick="btnAgregar_Click" />
                    <asp:Button ID="btnModificar" runat="server" CssClass="auto-style7" Text="Modificar" OnClick="btnModificar_Click" />
                    <asp:Button ID="btnCerrar" runat="server" CssClass="auto-style7" Text="Cerrar" OnClick="btnCerrar_Click" />
                    <asp:Label ID="lblMensajes" runat="server" CssClass="auto-style6"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
