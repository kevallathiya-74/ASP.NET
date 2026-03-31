using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _230801347.Ch_2
{
    public partial class P16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            img_preview.Visible = false;
        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            string img = Server.MapPath("~/Extra/Image/");
            file_select.SaveAs(img + file_select.FileName);
            drp_saveImg.Items.Add(file_select.FileName);
            lbl_msg.ForeColor = System.Drawing.Color.Green;
            lbl_msg.Text = file_select.FileName + " saved successfully...";
        }

        protected void btn_preview_Click(object sender, EventArgs e)
        {
            img_preview.Visible = true;
            img_preview.ImageUrl = "~/Extra/Image/" + drp_saveImg.SelectedValue;
        }
    }
}