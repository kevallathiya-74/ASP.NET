using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_1
{
    public partial class P17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_display_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('Hi, Keval Lathiya...!!') </script>");
        }
    }
}