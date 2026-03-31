using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enable_Click(object sender, EventArgs e)
        {
            txt_dis.Enabled = true;
        }

        protected void btn_disable_Click(object sender, EventArgs e)
        {
            txt_dis.Enabled = false;
        }
    }
}