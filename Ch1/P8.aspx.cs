using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_1
{
    public partial class P8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_sum_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txt_val1.Text);
            int b = Convert.ToInt32(txt_val2.Text);
            lbl_ans.Text = Convert.ToString(a + b);
        }
    }
}