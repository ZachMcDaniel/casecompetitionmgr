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
    public partial class AdminArchive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                editarchive.Visible = false;
                archives.Visible = false;
            }
        }

        protected void Btn_Archive(object sender, EventArgs e)
        {

            string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(mainconn);
            con.Open();
            SqlCommand sqlcomm = new SqlCommand();

            string check = "SELECT TeamID FROM TEAM WHERE CompetitionID IS NULL;";
            SqlCommand command = new SqlCommand(check, con);

            SqlDataReader reader = command.ExecuteReader();
            if (!reader.Read())
            {
                con.Close();
                lblEmpty.Text = "No new competitions to archive";
            }
            else
            {
                con.Close();
                con.Open();

                string insertSql = "INSERT INTO [Competition](CompetitionName, CompetitionDate) OUTPUT INSERTED.CompetitionID VALUES (@CompetitionName, @CompetitionDate);";
                SqlCommand cmd = new SqlCommand(insertSql, con);

                cmd.Parameters.AddWithValue("@CompetitionName", txtCompetition.Text);
                cmd.Parameters.AddWithValue("@CompetitionDate", txtDate.Text);

                var CompetitionID = (int)cmd.ExecuteScalar();

                string insertID = "UPDATE TEAM SET CompetitionID = @CompetitionID WHERE CompetitionID IS NULL;";
                SqlCommand comd = new SqlCommand(insertID, con);

                comd.Parameters.AddWithValue("@CompetitionID", CompetitionID);

                comd.ExecuteScalar();

                string insertjudgeID = "UPDATE Judges SET CompetitionID = @CompetitionID WHERE CompetitionID IS NULL;";
                SqlCommand cmnd = new SqlCommand(insertjudgeID, con);

                cmnd.Parameters.AddWithValue("@CompetitionID", CompetitionID);

                cmnd.ExecuteScalar();

                con.Close();

                SqlCompetition.EnableCaching = false;
                gvCompete.DataBind();
                SqlCompetition.EnableCaching = true;

                SqlDataSource1.EnableCaching = false;
                GridView1.DataBind();
                SqlDataSource1.EnableCaching = true;
            }


        }

        protected void btnShowArchives_Click(object sender, EventArgs e)
        {
            editarchive.Visible = false;
            archives.Visible = true;
            gvCompete.Visible = true;

            btnShowArchives.Style.Add("background-color", "rgba(255, 223, 0, 0.75)");
            btnShowArchives.Style.Add("font-weight", "bold");
            btnEditArchives.Style.Remove("background-color");
            btnEditArchives.Style.Remove("font-weight");

        }

        protected void btnEditArchives_Click(object sender, EventArgs e)
        {
            SqlDataSource1.EnableCaching = false;
            GridView1.DataBind();
            SqlDataSource1.EnableCaching = true;

            editarchive.Visible = true;
            gvCompete.Visible = false;
            archives.Visible = false;

            btnEditArchives.Style.Add("background-color", "rgba(255, 223, 0, 0.75)");
            btnEditArchives.Style.Add("font-weight", "bold");
            btnShowArchives.Style.Remove("background-color");
            btnShowArchives.Style.Remove("font-weight");

            string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(mainconn);
            con.Open();
            SqlCommand sqlcomm = new SqlCommand();

            string check = "SELECT CompetitionId From Competition;";
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