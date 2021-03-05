using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseCompetitionApp
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var userID = User.Identity.GetUserId();

            string user = Convert.ToString(userID);

            if (!IsPostBack)
            {
                SqlDataSource3.SelectParameters["ID"].DefaultValue = user;
            }
        }
    }
}