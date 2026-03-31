using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Calc_Class_Library;

namespace _230801347.Ch_1
{
    public partial class P20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_calc_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txt_val1.Text);
            int b = Convert.ToInt32(txt_val2.Text);
            int total;

            if (drd_ch.SelectedIndex == 0)
            {
                total = Calc_Class_Library.Class1.sum(a, b);
                lbl_ans.Text = "Addition of numbers are " + total;
            }
            else if (drd_ch.SelectedIndex == 1)
            {
                total = Calc_Class_Library.Class1.sub(a, b);
                lbl_ans.Text = "Subtraction of numbers are " + total;
            }
            else if (drd_ch.SelectedIndex == 2)
            {
                total = Calc_Class_Library.Class1.mul(a, b);
                lbl_ans.Text = "Multiplication of numbers are " + total;
            }
            else
            {
                total = Calc_Class_Library.Class1.div(a, b);
                lbl_ans.Text = "Division of numbers are " + total;
            }
        }
    }
}