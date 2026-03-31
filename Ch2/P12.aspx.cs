using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            img_choosen.Visible = false;
        }

        protected void img_round_Click(object sender, ImageClickEventArgs e)
        {
            img_choosen.Visible = true;
            img_choosen.ImageUrl = img_round.ImageUrl;
        }

        protected void img_square_Click(object sender, ImageClickEventArgs e)
        {
            img_choosen.Visible = true;
            img_choosen.ImageUrl = img_square.ImageUrl;
        }

        protected void img_traingle_Click(object sender, ImageClickEventArgs e)
        {
            img_choosen.Visible = true;
            img_choosen.ImageUrl = img_traingle.ImageUrl;
        }
    }
}