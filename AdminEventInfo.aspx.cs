using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.EnterpriseServices;

namespace CaseCompetitionApp
{
    public partial class AdminEventInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void txtFirstBoxtitle_TextChanged(object sender, EventArgs e)
        {
            Application["Box1a"] = txtFirstBoxtitle.Text;

        }

        protected void txtFirstBox_TextChanged(object sender, EventArgs e)
        {
            Application["Box1"] = txtFirstBox.Text;

        }


        protected void BtnUpdate1_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/EventInformation.aspx");

        }

        protected void txtSecondBoxtitle_TextChanged(object sender, EventArgs e)
        {
            Application["Box2a"] = txtSecondBoxtitle.Text;
        }

        protected void txtSecondBox_TextChanged(object sender, EventArgs e)
        {
            Application["Box2"] = txtSecondBox.Text;
        }

        protected void BtnUpdate2_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/EventInformation.aspx");
        }

        protected void txtThirdBoxtitle_TextChanged(object sender, EventArgs e)
        {
            Application["Box3a"] = txtThirdBoxtitle.Text;
        }

        protected void txtThirdBox_TextChanged(object sender, EventArgs e)
        {
            Application["Box3"] = txtThirdBox.Text;
        }
        protected void BtnUpdate3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EventInformation.aspx");
        }





        protected void LbInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["EventDate"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEventDate")).Text;

            SqlDataSource1.InsertParameters["EventStartTime"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEventStartTime")).Text;

            SqlDataSource1.InsertParameters["EventEndTime"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEventEndTime")).Text;

            SqlDataSource1.InsertParameters["EventLocation"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEventLocation")).Text;

            SqlDataSource1.InsertParameters["EventName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEventName")).Text;

            SqlDataSource1.InsertParameters["EventDescription"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEventDescription")).Text;

            SqlDataSource1.InsertParameters["EventSpeaker"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEventSpeaker")).Text;


            SqlDataSource1.Insert();

        }

    }
}