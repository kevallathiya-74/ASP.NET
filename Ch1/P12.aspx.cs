using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_1
{
    public partial class P12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt_val1.Text = null;
                txt_val2.Text = null;
            }
        }

        protected void btn_chk_Click(object sender, EventArgs e)
        {
            txt_val1.Visible = false;
            txt_val2.Visible = false;
            int a = Convert.ToInt32(txt_val1.Text);
            int b = Convert.ToInt32(txt_val2.Text);
            Label1.Text = "Original values are a = " + a + " & b = " + b;
            int c = a;
            a = b;
            b = c;
            Label2.Text = "Swapped values are a = " + a + " & b = " + b;
        }
    }
}