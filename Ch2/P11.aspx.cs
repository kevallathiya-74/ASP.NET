using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace _230801347.Ch_2
{
    public partial class P11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_select_Click(object sender, EventArgs e)
        {
            Panel1.BackColor = Color.FromName(listColor.SelectedColor);
        }
    }
}