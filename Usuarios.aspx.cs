using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Usuarios : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DataSet dsP = new DataSet();
    wcfDatos.ServiceClient ws = new wcfDatos.ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!Page.IsPostBack)
            {
                if (Session["Usuario"] != null)
                    lblUsuario.Text += Session["Usuario"].ToString();
                dsP = ws.ListarPrivilegios();//Se carga el DataSet con la información de los privilegios actualizados de la BD
                ddlPrivilegios.DataSource = dsP.Tables[0];//Se asigna el origen de datos DataTable de los privilegios al DDL
                ddlPrivilegios.DataValueField = dsP.Tables[0].Columns[0].ColumnName;//Se asigna cuál es el campo del valor asociado al DDL (IdPrivilegio)
                ddlPrivilegios.DataTextField = dsP.Tables[0].Columns[1].ColumnName;//Se asigna el campo que se va a mostrar en el DDL (NombrePrivilegio)
                ddlPrivilegios.DataBind();//Refresca la información del DDL y hace que se vea en el form
            }
            if (Session["Login"] == null)
            {
                Session["Usuario"] = null;
                Session["IdUsuario"] = null;
                Response.Redirect("~/Login.aspx");
            }
        }
        catch (Exception ex)
        {
            lblMensajes.Text = "Error: " + ex.Message.ToString() + " Stack: " + ex.StackTrace.ToString();
        }
    }
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtIdUsuario.Text.Length == 0)
                txtIdUsuario.Text = "0";
            ds = ws.BuscarUsuario(int.Parse(txtIdUsuario.Text), txtNombre.Text, txtLogin.Text);
            if (ds != null)
            {
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        if (int.Parse(ds.Tables[0].Rows[0]["IdUsuario"].ToString()) > 0)
                        {
                            txtIdUsuario.Text = ds.Tables[0].Rows[0]["IdUsuario"].ToString();
                            txtNombre.Text = ds.Tables[0].Rows[0]["Nombre"].ToString();
                            txtLogin.Text = ds.Tables[0].Rows[0]["Login"].ToString();
                            txtPassword.Text = ds.Tables[0].Rows[0]["Password"].ToString();
                            chkEstado.Checked = bool.Parse(ds.Tables[0].Rows[0]["Estado"].ToString());
                            txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                            ddlPrivilegios.SelectedValue = ds.Tables[0].Rows[0]["Privilegio"].ToString();
                            txtFecha.Text = ds.Tables[0].Rows[0]["Fecha"].ToString();
                        }
                        else
                            lblMensajes.Text = "Usuario no encontrado!";
                    }
                    else
                        lblMensajes.Text = "Sin registros!";
                }
                else
                    lblMensajes.Text = "Sin tablas que mostrar!";
            }
            else
                lblMensajes.Text = "Sin datos!";
        }
        catch (Exception ex)
        {
            lblMensajes.Text = "Error: " + ex.Message.ToString() + " Stack: " + ex.StackTrace.ToString();
        }
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        try
        {
            ds = ws.AgregarUsuario(txtNombre.Text, txtLogin.Text, txtPassword.Text, chkEstado.Checked, txtEmail.Text, int.Parse(ddlPrivilegios.SelectedValue));
            lblMensajes.Text = ds.Tables[0].Rows[0]["IdUSuario"].ToString() + " - Registro agredado satisfactoriamente!";
        }
        catch (Exception ex)
        {
            lblMensajes.Text = "Error: " + ex.Message.ToString() + " Stack: " + ex.StackTrace.ToString();
        }
    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        try
        {
            ds = ws.ModificarUsuario(int.Parse(txtIdUsuario.Text),txtNombre.Text, txtLogin.Text, txtPassword.Text, chkEstado.Checked, txtEmail.Text, int.Parse(ddlPrivilegios.SelectedValue));
            lblMensajes.Text = ds.Tables[0].Rows[0]["Mensaje"].ToString();
        }
        catch (Exception ex)
        {
            lblMensajes.Text = "Error: " + ex.Message.ToString() + " Stack: " + ex.StackTrace.ToString();
        }
    }

    protected void btnCerrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Menu.aspx");
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        try
        {
            ds = ws.EliminarUsuario(int.Parse(txtIdUsuario.Text));
            lblMensajes.Text = ds.Tables[0].Rows[0]["Mensaje"].ToString();
        }
        catch (Exception ex)
        {
            lblMensajes.Text = "Error: " + ex.Message.ToString() + " Stack: " + ex.StackTrace.ToString();
        }
    }
}