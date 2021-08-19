using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComprendiendoAspNet
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre = Request.Form["Nombre"];
            if (nombre!=null)
            {
                Global.Regiones.Add(new Global.Region(5, nombre,nombre));
                Response.Write("<script>alert('Se agrego un nuevo registro')</script>");
            }

        }

      
    }
}