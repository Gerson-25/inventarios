using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    //Repositorio de datos
    DataSet ds = new DataSet();
    //Se crea el objeto con la referencia del servicio web que se va a cosumir
    wcfDatos.ServiceClient ws = new wcfDatos.ServiceClient();

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        try
        {
            //Se valida que el usuario y contraseña se hayan ingresado
            if ((txtLogin.Text.Length == 0) || (txtPassword.Text.Length == 0))
            {
                lblMensajes.Text = "Usuario o contraseña no pueden estar vacíos!";
                return;
            }
            ds = ws.ValidarUsuario(txtLogin.Text, txtPassword.Text);
            if (ds != null)//Se valida si trae datos
            {
                if (ds.Tables.Count > 0)//Se valida si trae un DataTable
                {
                    if (ds.Tables[0].Rows.Count > 0)//Si trae Registros
                    {
                        if (ds.Tables[0].Rows[0][0].ToString() != "-1")//Si el usuario existe
                        {
                            lblMensajes.Text = "Bienvenido al Sistema " + ds.Tables[0].Rows[0][1].ToString();
                            Session["Usuario"] = ds.Tables[0].Rows[0]["Nombre"].ToString();
                            Session["Login"] = txtLogin.Text;
                            Session["IdUsuario"] = ds.Tables[0].Rows[0]["IdUsuario"].ToString();
                            Response.Redirect("~/Menu.aspx");
                        }
                        else
                        {
                            lblMensajes.Text = "Usuario o contraseña incorrectos!";
                            Session["Usuario"] = null;
                            Session["Login"] = null;
                            Session["IdUsuario"] = null;
                        }
                    }
                    else
                        lblMensajes.Text = "Sin registros!";
                }
                else
                    lblMensajes.Text = "Error en exrtacción de datos!";
            }
            else
                lblMensajes.Text = "Error en ejecución de la consulta!";
        }
        catch (Exception ex)
        {
            lblMensajes.Text = ex.Message;
        }
    }//Fin metodo evento click del boton Ingresar

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Session["Usuario"] = null;
            Session["Login"] = null;
            Session["IdUsuario"] = null;
        }
    }
}//Cierre de la clase