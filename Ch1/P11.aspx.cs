using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_1
{
    public partial class P11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_chk_Click(object sender, EventArgs e)
        {
            int age = Convert.ToInt32(txt_num.Text);
            if (age >= 18)
            {
                lbl_result.Text = "User is eligible for vote.";
            }
            else
            {
                lbl_result.Text = "User is not eligible.";
            }
        }
    }
}