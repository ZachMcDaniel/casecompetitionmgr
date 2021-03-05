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
    public partial class JudgeRegister : Page
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
                string insertSql = "INSERT INTO [Judges](FirstName, LastName, Company, Email, CompanySite, Username) OUTPUT INSERTED.JudgeID VALUES (@FirstName, @LastName, @Company, @Email, @CompanySite, @Username);";
                SqlCommand cmd = new SqlCommand(insertSql, con);

                cmd.Parameters.AddWithValue("@Firstname", FName.Text);
                cmd.Parameters.AddWithValue("@Lastname", LName.Text);
                cmd.Parameters.AddWithValue("@Company", Company.Text);
                cmd.Parameters.AddWithValue("@Email", Email.Text);
                cmd.Parameters.AddWithValue("@CompanySite", coURL.Text);
                cmd.Parameters.AddWithValue("@Username", username.Text);

                var JudgeID = (int)cmd.ExecuteScalar();



                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
              
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }

          
        }
    }
}