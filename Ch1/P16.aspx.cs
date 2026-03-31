using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_1
{
    public partial class P16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_sum_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txt_val1.Text);
            int b = Convert.ToInt32(txt_val2.Text);
            int total;
            addition_2 add = new addition_2();
            if (txt_val3.Text == "")
            {
                total = add.sum(a, b);
            }
            else
            {
                int c = Convert.ToInt32(txt_val3.Text);
                total = add.sum(a, b, c);
            }
            lbl_ans.Text = "<b>" + total + "</b>.";
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            btn_add.Visible = false;
            lbl_3.Visible = true;
            txt_val3.Visible = true;
        }

        public class addition_1
        {
            public int sum(int a, int b)
            {
                return a + b;
            }
        }
        public class addition_2 : addition_1
        {
            public new int sum(int a, int b)
            {
                a = 0;
                return a + b;
            }
            public int sum(int a, int b, int c)
            {
                return a + b + c;
            }
        }

        
        
    }
}