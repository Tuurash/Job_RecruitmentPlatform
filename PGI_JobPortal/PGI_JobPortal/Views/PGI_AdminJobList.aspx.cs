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
    public partial class PGI_AdminJobList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillJobRepeater();
        }

        private void FillJobRepeater()
        {
            DataTable dt = JobManager.getAllJobList();
            RptrJobList.DataSource = dt;
            RptrJobList.DataBind();
        }
    }
}