using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_blue_Click(object sender, EventArgs e)
        {
            lbl_txt.ForeColor = System.Drawing.Color.Blue;
        }

        protected void btn_green_Click(object sender, EventArgs e)
        {
            lbl_txt.ForeColor = System.Drawing.Color.Green;
        }

        protected void btn_red_Click(object sender, EventArgs e)
        {
            lbl_txt.ForeColor = System.Drawing.Color.Red;
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            lbl_txt.ForeColor = System.Drawing.Color.Black;
        }
    }
}