using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //Esta propiedad indica que la página se está cargando por primera vez
            if (Session["Usuario"] != null)
                lblUsuario.Text += Session["Usuario"].ToString();
        }
        if (Session["Login"] == null)
        {
            Session["Usuario"] = null;
            Session["IdUsuario"] = null;
            Response.Redirect("~/Login.aspx");
        }
            
    }
}