using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PGI_JobPortal.Views
{
    public partial class PGI_DashboardMaster : System.Web.UI.MasterPage
    {
        string userName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null && Session["UserCode"] != null)
            {
                userName = Session["Name"].ToString();
                lblUserName.Text = userName;
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }

            if (Session["UserRole"].ToString() == "Candidate")
            {
                divJobPosting.Visible = false;

            }
            else if (Session["UserRole"].ToString() == "Admin")
            {
                divProfile.Visible = false;
                divAppliedJobs.Visible = false;
                divResume.Visible = false;
            }
        }

        protected void btnLogout_ServerClick(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("LoginPage.aspx");
        }
    }
}