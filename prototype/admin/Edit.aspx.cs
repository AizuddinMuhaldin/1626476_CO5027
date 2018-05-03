using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prototype.admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload file = (FileUpload)FormView1.FindControl("FileUpload") as FileUpload;
            string extension = (System.IO.Path.GetExtension(file.FileName).ToLower());
            if (file.HasFile)
            {
                if (extension == ".png" || extension == ".jpeg" || extension == ".gif" || extension == ".jpg")
                {
                    file.SaveAs(Server.MapPath("~/Images/" + file.FileName));
                    Label saveProduct = (Label)FormView1.FindControl("lblSave") as Label;
                    saveProduct.Text = "~/Images/" + file.FileName;
                    Literal1.Text = "File successfully uploaded";
                }
                else
                {
                    Literal1.Text = "invalid image file type";
                }

            }
        }
    }
}