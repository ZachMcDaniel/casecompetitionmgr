using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseCompetitionApp
{
    public partial class Testtimer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var userID = User.Identity.GetUserId();

            string user = Convert.ToString(userID);

            string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(mainconn);
            con.Open();
            SqlCommand sqlcomm = new SqlCommand();
            string time = "select timeslots FROM TEAM WHERE TeamName = (SELECT Username from AspNetUsers where Id = @TeamID);";
            SqlCommand cmd = new SqlCommand(time, con);

            cmd.Parameters.AddWithValue("@TeamID", user);

            cmd.ExecuteScalar();

            var timers = time;
        }

    }
}