using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            lbl_nm.Text = "I am " + txt_nm.Text;
            ltr_nm.Text = "I am " + txt_nm.Text;
        }

        protected void ibtn_submit_Click(object sender, ImageClickEventArgs e)
        {
            lbl_nm.Text = "My name is " + txt_nm.Text;
            ltr_nm.Text = "My name is " + txt_nm.Text;
        }
    }
}