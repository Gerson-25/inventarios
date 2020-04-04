using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Proveedores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    DataSet ds = new DataSet();
    wcfDatos.ServiceClient ws = new wcfDatos.ServiceClient();

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtIdProveedor.Text == "")
                txtIdProveedor.Text = "0";
            ds = ws.BuscarProveedor(int.Parse(txtIdProveedor.Text), txtEmpresa.Text);
            if (ds != null)
            {
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        if (ds.Tables[0].Rows[0][0].ToString() != "-1")
                        {
                            txtIdProveedor.Text = ds.Tables[0].Rows[0]["IdProveedor"].ToString();
                            txtEmpresa.Text = ds.Tables[0].Rows[0]["Empresa"].ToString();
                            txtContacto.Text = ds.Tables[0].Rows[0]["Contacto"].ToString();
                            txtTelefono.Text = ds.Tables[0].Rows[0]["Telefono"].ToString();
                            txtDireccion.Text = ds.Tables[0].Rows[0]["Direccion"].ToString();
                            txtPaginaWeb.Text = ds.Tables[0].Rows[0]["PaginaWeb"].ToString();
                            txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                            txtRegistro.Text = ds.Tables[0].Rows[0]["Registro"].ToString();
                            txtNit.Text = ds.Tables[0].Rows[0]["Nit"].ToString();
                            txtRazonSocial.Text = ds.Tables[0].Rows[0]["RazonSocial"].ToString();
                            chkEstado.Checked = bool.Parse(ds.Tables[0].Rows[0]["Estado"].ToString());
                            txtFecha.Text = ds.Tables[0].Rows[0]["Fecha"].ToString();
                        }
                        else
                            lblMensajes.Text = "Proveedor no existe!";
                    }
                    else
                        lblMensajes.Text = "Sin registros!";
                }
                else
                    lblMensajes.Text = "Sin datos!";
            }
            else
                lblMensajes.Text = "Error en ejecución del SP!";
        }
        catch (Exception ex)
        {
            lblMensajes.Text = ex.Message;
        }
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        try
        {
            ds = ws.AgregarProveedor(txtEmpresa.Text, txtContacto.Text, txtTelefono.Text, txtDireccion.Text, txtPaginaWeb.Text, txtEmail.Text, txtRegistro.Text, txtNit.Text, txtRazonSocial.Text, chkEstado.Checked);
            lblMensajes.Text = "Registro agregado Id="+ds.Tables[0].Rows[0][0].ToString();
        }
        catch (Exception ex)
        {
            lblMensajes.Text = ex.Message;
        }
    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        try
        {
            ds = ws.ModificarProveedor(int.Parse(txtIdProveedor.Text), txtEmpresa.Text, txtContacto.Text, txtTelefono.Text, txtDireccion.Text, txtPaginaWeb.Text, txtEmail.Text, txtRegistro.Text, txtNit.Text, txtRazonSocial.Text, chkEstado.Checked);
            lblMensajes.Text = ds.Tables[0].Rows[0][0].ToString();
        }
        catch (Exception ex)
        {
            lblMensajes.Text = ex.Message;
        }
    }

    protected void btnCerrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Menu.aspx");
    }
}