using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_1
{
    public partial class P15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            int ch = Convert.ToInt32(txt_choice.Text);
            switch (ch)
            {
                case 1:
                    lbl_msg.Text = "Day as per choice is <b>Sunday</b>";
                    break;
                case 2:
                    lbl_msg.Text = "Day as per choice is <b>Monday</b>";
                    break;
                case 3:
                    lbl_msg.Text = "Day as per choice is <b>Tuesday</b>";
                    break;
                case 4:
                    lbl_msg.Text = "Day as per choice is <b>Wednesday</b>";
                    break;
                case 5:
                    lbl_msg.Text = "Day as per choice is <b>Thursday</b>";
                    break;
                case 6:
                    lbl_msg.Text = "Day as per choice is <b>Friday</b>";
                    break;
                case 7:
                    lbl_msg.Text = "Day as per choice is <b>Saturnday</b>";
                    break;
                default:
                    break;
            }
        }
    }
}