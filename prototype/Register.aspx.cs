using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace prototype
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("RegisteredRole");
            roleManager.Create(adminRole);
            var user = new IdentityUser()
            {
                UserName = RegUsername.Text,
                Email = RegUsername.Text
            };

            IdentityResult result = manager.Create(user, RegPassword.Text);
            if (result.Succeeded)
            {
                litRegisterError.Text = "Successfully registered.";
                RegUsername.Text = "";
                RegPassword.Text = "";
                manager.AddToRole(user.Id, "RegisteredRole");
                manager.Update(user);
                litRegisterError.Text = "Registration Successful";
            }
            else
            {
                litRegisterError.Text = "There is an error with the registration" + result.Errors.FirstOrDefault();
            }
        }
    }
}