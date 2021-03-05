using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseCompetitionApp
{
    public partial class TeamMGMT : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            var userID = User.Identity.GetUserId();

            string user = Convert.ToString(userID);


            if (!IsPostBack)
            {
                clearfields();
                SqlDataSource1.SelectParameters["ID"].DefaultValue = user;

                NewMember.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var userID = User.Identity.GetUserId();

                string user = Convert.ToString(userID);

                string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(mainconn);
                con.Open();
                SqlCommand sqlcomm = new SqlCommand();
                string insertSql = "INSERT INTO [MEMBERS](TeamID, FirstName, LastName, PhoneNumber, Email, ShirtSize, Vegan) OUTPUT INSERTED.MemberID VALUES ((select TeamID FROM TEAM where TeamName = (select Username FROM AspNetUsers where Id = @TeamId)), @FirstName,@LastName,@PhoneNumber, @Email, @ShirtSize, @Vegan);";
                SqlCommand cmd = new SqlCommand(insertSql, con);

                cmd.Parameters.AddWithValue("@TeamID", user);
                cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtLName.Text);
                cmd.Parameters.AddWithValue("@PhoneNumber", txtPhone.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@ShirtSize", txtShirt.Text);
                cmd.Parameters.AddWithValue("@Vegan", rbtnVegan.SelectedValue);

                var MemberID = (int)cmd.ExecuteScalar();

                Response.Redirect("TeamMGMT.aspx");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clearfields();
        }

        protected void clearfields()
        {
            txtFirstName.Text = "";
            txtLName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtShirt.Text = "";
            txtfood.Text = "";
            rbtnVegan.ClearSelection();
        }

        protected void BtnAddMember_Click(object sender, EventArgs e)
        {
            if(NewMember.Visible == true)
            {
                NewMember.Visible = false;
            }
            
            else
            {
                NewMember.Visible = true;
            }
        }

    }
}