using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseCompetitionApp
{
    public partial class Hub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BTNDeliv_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deliverables.aspx");
        }

        protected void BTNAnnounce_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAnnounce.aspx");
        }

        protected void BTNDownCaseFile_Click(object sender, EventArgs e)
        {
            Response.Redirect("CaseFiles.aspx");
        }

        protected void BTNModifyCompetitionInfo(object sender, EventArgs e)
        {
            Response.Redirect("ModifyCompetitionInfo.aspx");
        }

        protected void BTNFileReview_Click(object sender, EventArgs e)
        {
            Response.Redirect("FileReview.aspx");
        }

        protected void BTNTeamMGMT_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeamMGMT.aspx");
        }
        protected void BTNDeliverables_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deliverables.aspx");
        }
        protected void BTNAnnouncements_Click(object sender, EventArgs e)
        {
            Response.Redirect("Announcements.aspx");
        }
        protected void BTNSubmissions_Click(object sender, EventArgs e)
        {
            Response.Redirect("Submissions.aspx");
        }
        protected void BTNJudgeModify_Click(object sender, EventArgs e)
        {
            Response.Redirect("JudgeModify.aspx");
        }
    }
}