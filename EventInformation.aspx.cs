using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CaseCompetitionApp
{
    public partial class EventInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["Box1a"] != null)
            {
                LblBox1a.Text = Application["Box1a"].ToString();
            }
            else
            {
                LblBox1a.Text = "Coming Soon...";
            }

            if (Application["Box1"] != null)
            {
                LblBox1.Text = Application["Box1"].ToString();
            }
            else
            {
                LblBox1.Text = " ";
            }

            if (Application["Box2a"] != null)
            {
                LblBox2a.Text = Application["Box2a"].ToString();
            }
            else
            {
                LblBox2a.Text = " ";
            }

            if (Application["Box2"] != null)
            {
                LblBox2.Text = Application["Box2"].ToString();
            }
            else
            {
                LblBox2.Text = " ";
            }

            if (Application["Box3a"] != null)
            {
                LblBox3a.Text = Application["Box3a"].ToString();
            }
            else
            {
                LblBox3a.Text = " ";
            }

            if (Application["Box3"] != null)
            {
                LblBox3.Text = Application["Box3"].ToString();
            }
            else
            {
                LblBox3.Text = " ";
            }



            string CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT EventID, EventName, EventDate, EventStartTime, EventEndTime, EventLocation, EventDescription, EventSpeaker FROM EventInfo", con);
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    GridView1.Visible = true;
                }

            }

        }
    }
}