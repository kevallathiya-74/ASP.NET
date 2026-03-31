using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            string gender = "Gender : ";
            if (rd_female.Checked)
            {
                gender += "Female";
            }
            else
            {
                gender += "Male";
            }
            string choice = "<br> Choice : ";
            foreach (ListItem item in rd_choice.Items)
            {
                if (item.Selected)
                {
                    choice += item;
                }
            }
            string hobby = "<br> Hobby : ";
            if (chk_cricket.Checked)
            {
                hobby += " Cricket,";
            }
            if (chk_reading.Checked)
            {
                hobby += " Reading,";
            }
            if (chk_travel.Checked)
            {
                hobby += " Travelling,";
            }
            hobby += "...";
            string qualification = "<br> Qualifications : ";
            foreach (ListItem item in chk_qualification.Items)
            {
                if (item.Selected)
                {
                    qualification += " " + item + ",";
                }
            }
            qualification += "...";
            string city = "<br> City : ";
            city += drp_city.SelectedValue;
            ltr_info.Text = gender + choice + hobby + qualification + city;
        }
    }
}