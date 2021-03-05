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
    public partial class CompetitorInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(mainconn);
            con.Open();
            SqlCommand sqlcomm = new SqlCommand();

            string check = "SELECT [TeamID] FROM [TEAM] where competitionID IS NULL;";
            SqlCommand command = new SqlCommand(check, con);

            SqlDataReader reader = command.ExecuteReader();
            if (!reader.Read())
            {
                empty.Visible = true;
            }

            else
            {
                empty.Visible = false;
            }
        }
    }
}