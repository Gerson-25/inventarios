<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

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
            text-align: center;
            font-size: xx-large;
        }
        .auto-style3 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" style="position: relative; top: 2px; left: 4px;">
            <tr>
                <td class="auto-style2" colspan="2"><strong style="text-align: center">Menú Principal del Sistema de Inventarios</strong></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td><strong>
                    <asp:Label ID="lblUsuario" runat="server" CssClass="auto-style3" Text="Usuario activo: "></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#B5C7DE" />
                        <DynamicSelectedStyle BackColor="#507CD1" />
                        <Items>
                            <asp:MenuItem Text="Mantenimientos" Value="Mantenimientos">
                                <asp:MenuItem Text="Usuarios" Value="Usuarios" NavigateUrl="~/Usuarios.aspx"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Proveedores.aspx" Text="Proveedores" Value="Proveedores"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Categorias.aspx" Text="Categorías" Value="Categorías"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Productos.aspx" Text="Productos" Value="Productos"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Procesos" Value="Procesos"></asp:MenuItem>
                            <asp:MenuItem Text="Reportes" Value="Reportes"></asp:MenuItem>
                            <asp:MenuItem Text="Cerrar Sesión" Value="Cerrar Sesión" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#507CD1" />
                    </asp:Menu>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
