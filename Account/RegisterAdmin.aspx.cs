using CaseCompetitionApp.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseCompetitionApp
{
    public partial class RegisterAdmin : System.Web.UI.Page
    {
        ApplicationRoleManager roleMgr;
        ApplicationUserManager userMgr;
        protected void Page_Load(object sender, EventArgs e)
        {
            userMgr = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            roleMgr = Context.GetOwinContext().Get<ApplicationRoleManager>();
            lblSubmit.Visible = false;
        }

            protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = username.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, "Gohawks1847!");

            if (result.Succeeded)
            {
                result = manager.AddToRole(user.Id, "admin");

                // User added successfully, you can safely use the Id now.
                var id = user.Id;

                lblSubmit.Text = "New Admin account created";
                lblSubmit.Visible = true;

                //userMgr.AddToRole(username.Text, "1");

                //signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }


        }
    }
}