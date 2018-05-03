using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prototype.admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }






        //protected void LinkButton1_Click(object sender, EventArgs e)
        //{
        //    FileUpload file = (FileUpload)FormView1.FindControl("FileUpload1") as FileUpload;
        //    if (file.HasFile)
        //    {
        //        file.SaveAs(Server.MapPath("~/Images/" + file.FileName));
        //        Label saveProduct = (Label)FormView1.FindControl("Label1") as Label;
        //        saveProduct.Text = "~/Images/" + file.FileName;

        //    }
        //}

    }
}