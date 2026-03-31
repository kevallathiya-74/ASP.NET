using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_bold_Click(object sender, EventArgs e)
        {
            lbl_txt.Font.Bold = true;
            lbl_txt.Font.Italic = false;
            lbl_txt.BackColor = System.Drawing.Color.White;
        }

        protected void btn_italic_Click(object sender, EventArgs e)
        {
            lbl_txt.Font.Bold = false;
            lbl_txt.Font.Italic = true;
            lbl_txt.BackColor = System.Drawing.Color.White;
        }

        protected void btn_bgcolor_Click(object sender, EventArgs e)
        {
            lbl_txt.BackColor = System.Drawing.Color.Aqua;
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            lbl_txt.Font.Bold = false;
            lbl_txt.Font.Italic = false;
            lbl_txt.BackColor = System.Drawing.Color.White;
        }
    }
}