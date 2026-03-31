using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_1
{
    public partial class P13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int i = 1;
            Response.Write("Using while : <br />");
            while (i < 11)
            {
                Response.Write(i + "<br />");
                i++;
            }
            i = 1;
            Response.Write("<br /> Using do_while : <br />");
            do
            {
                Response.Write(i + "<br />");
                i++;
            } while (i < 11);
            Response.Write("<br /> Using for : <br />");
            for (i = 1; i < 11; i++)
            {
                Response.Write(i + "<br />");
            }
        }
    }
}