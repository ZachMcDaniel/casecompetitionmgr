using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using CaseCompetitionApp.Models;
using System.Configuration;
using System.Data.SqlClient;

namespace CaseCompetitionApp.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = username.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(mainconn);
                con.Open();
                SqlCommand sqlcomm = new SqlCommand();
                string insertSql = "INSERT INTO [TEAM](TeamName, School, Email) OUTPUT INSERTED.TeamID VALUES (@TeamName, @School, @Email);";
                SqlCommand cmd = new SqlCommand(insertSql, con);

                cmd.Parameters.AddWithValue("@TeamName", username.Text);
                cmd.Parameters.AddWithValue("@School", school.Text);
                cmd.Parameters.AddWithValue("@Email", Email.Text);
              

                var JudgeID = (int)cmd.ExecuteScalar();


                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);

                LabelHelp.Text = Convert.ToString(result);

                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

                //var userID = User.Identity.GetUserId();
                //string login = Convert.ToString(userID);

                //int three = Convert.ToInt32("3");

                //SqlConnection conn = new SqlConnection(mainconn);
                //conn.Open();
                //SqlCommand sqlcom = new SqlCommand();
                //string insertSqls = "INSERT INTO [AspNetUserRoles](UserId, RoleId) VALUES (@User, @Role);";
                //SqlCommand comd = new SqlCommand(insertSqls, conn);

                //comd.Parameters.AddWithValue("@User", login);
                //comd.Parameters.AddWithValue("@Role", three);
                //comd.ExecuteScalar();

            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}