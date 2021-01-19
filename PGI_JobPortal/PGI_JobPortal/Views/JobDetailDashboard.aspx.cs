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
    public partial class JobDetailDashboard : System.Web.UI.Page
    {
        string getjobCode = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["JobCode"] != null)
            {
                getjobCode = Request.QueryString["JobCode"];
            }

            if (!IsPostBack)
            {
                FillJobInfo();
                FillJobDetails();
            }

            if (Session["UserRole"].ToString() == "Admin")
            {
                btnApply.Visible = false;
                btnDelete.Visible = true;
            }
        }

        private void FillJobInfo()
        {
            DataTable dt = JobManager.GetJobInfoByCode(getjobCode);
            if (dt.Rows.Count != 0)
            {
                lblJobName.Text = dt.Rows[0]["JobName"].ToString();
                lblLocation.Text = dt.Rows[0]["Location"].ToString();
                lblCatagory.Text = dt.Rows[0]["Catagory"].ToString();
                lblWorkPlace.Text = dt.Rows[0]["Workplace"].ToString();
                lblEmpStatus.Text = dt.Rows[0]["EmploymentStatus"].ToString();
                lblPostDate.Text = dt.Rows[0]["PostDate"].ToString();
                lblDeadLine.Text = dt.Rows[0]["Deadline"].ToString();
                lblVacancy.Text = dt.Rows[0]["Vacancy"].ToString();
                lblExperiencePeriod.Text = dt.Rows[0]["Experience"].ToString();
                lblSalary.Text = dt.Rows[0]["Salary"].ToString();
                lblGender.Text = dt.Rows[0]["GenderPreference"].ToString();
            }
        }

        private void FillJobDetails()
        {
            DataTable dt = JobManager.GetJobDetailByCode(getjobCode);
            if (dt.Rows.Count != 0)
            {
                lblJobDescription.Text = dt.Rows[0]["JobDescription"].ToString();
                lblResponsibilities.Text = dt.Rows[0]["Responsibilities"].ToString();
                lblEducationalReq.Text = dt.Rows[0]["EducationalReq"].ToString();
                lblExperienceReq.Text = dt.Rows[0]["ExperienceReq"].ToString();
                lblAdditionalReq.Text = dt.Rows[0]["AdditionalReq"].ToString();
                lblBenifits.Text = dt.Rows[0]["Benifits"].ToString();
            }
        }

        protected void btnDelete_ServerClick(object sender, EventArgs e)
        {

        }

        protected void btnApply_ServerClick(object sender, EventArgs e)
        {

        }
    }
}