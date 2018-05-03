using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace prototype.admin
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                    LitImg.Text = "File successfully uploaded";
                }
                else
                {
                    LitImg.Text = "invalid image file type";
                }
            }
        }

        protected void FormView1_PageIndexChanging1(object sender, FormViewPageEventArgs e)
        {

        }
    }
}