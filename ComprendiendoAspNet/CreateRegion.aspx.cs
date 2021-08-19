using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComprendiendoAspNet
{
    public partial class CreateRegion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre = Request.Form["Nombre"];
           
            if (nombre != null )
            {
                int id =int.Parse( Request.Form["Id"]);
                Global.Regiones.Add(new Global.Region(id, nombre, null));
                Response.Write("<script>alert('Se agrego un nuevo registro')</script>");
            }
            else
            {
                Response.Write("<script>alert('Llene todos los campos')</script>");
            }

        }
    }
}