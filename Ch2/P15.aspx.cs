using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_fetch_Click(object sender, EventArgs e)
        {
            lbl_dt.Text = "Selected date is : " + calender.SelectedDate.ToShortDateString();
        }

        protected void btn_right_Click(object sender, EventArgs e)
        {
            lstBox_2.Items.Add(lstBox_1.SelectedValue);
            lstBox_1.Items.Remove(lstBox_1.SelectedValue);
        }

        protected void btn_rightMulti_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lstBox_1.Items)
            {
                lstBox_2.Items.Add(item);
            }
            lstBox_1.Items.Clear();
        }

        protected void btn_left_Click(object sender, EventArgs e)
        {
            lstBox_1.Items.Add(lstBox_2.SelectedValue);
            lstBox_2.Items.Remove(lstBox_2.SelectedValue);
        }

        protected void btn_leftAll_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lstBox_2.Items)
            {
                lstBox_1.Items.Add(item);
            }
            lstBox_2.Items.Clear();
        }
    }
}