using PGI_JobPortal.Manager;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PGI_JobPortal.Views
{
    public partial class JobListIndex : System.Web.UI.Page
    {
        string getJobCatagory = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //JobCatagory
            if (Request.QueryString["JobCatagory"] != null)
            {
                getJobCatagory = Request.QueryString["JobCatagory"];

                FillJobRepeaterByCatagory(getJobCatagory);
            }
            else
            {
                FillJobRepeater();
            }


        }

        private void FillJobRepeaterByCatagory(string getJobCatagory)
        {
            DataTable dt = JobManager.getAllJobListByCatagory(getJobCatagory);
            RptrJobList.DataSource = dt;
            RptrJobList.DataBind();
        }
        private void FillJobRepeater()
        {
            DataTable dt = JobManager.getAllJobList();
            RptrJobList.DataSource = dt;
            RptrJobList.DataBind();
        }

    }
}