using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PGI_JobPortal.Manager;
using PGI_JobPortal.Models;

namespace PGI_JobPortal.Views
{
    public partial class AppliedJobsPage : System.Web.UI.Page
    {
        string getUserCode = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserCode"].ToString() != null)
            {
                getUserCode = Session["UserCode"].ToString();

                FillRptrAppliedJobList();
            }
            else { Response.Redirect("LoginPage.aspx"); }
        }

        private void FillRptrAppliedJobList()
        {
            DataTable dt = JobManager.getAllJobListByUserCode(getUserCode);
            RptrAppliedJobList.DataSource = dt;
            RptrAppliedJobList.DataBind();
        }
    }
}