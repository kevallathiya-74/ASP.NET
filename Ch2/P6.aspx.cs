using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            lbl_selection.Text = "Your favourite color is : <br />";
            foreach (ListItem item in rdList_color.Items)
            {
                if (item.Selected)
                {
                    lbl_selection.Text += item;
                }
            }
        }
    }
}