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
    public partial class JobPostingPage : System.Web.UI.Page
    {
        string seriesName = "";
        string prefixHF = "";
        string curNoHF = "";
        string preFix = "";
        int currentNo;

        PGI_JobDetails obj_JobDetail = new PGI_JobDetails();
        PGI_JobInfo obj_jobInfo = new PGI_JobInfo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillJobCatagory();
            }
        }

        private void FillJobCatagory()
        {
            DataTable dt = NumberSeriesManager.getAllCatagory();
            dropdownJobCatagory.DataSource = dt;
            dropdownJobCatagory.DataTextField = "SeriesName";
            dropdownJobCatagory.DataValueField = "SeriesName";
            dropdownJobCatagory.DataBind();
        }
        protected void dropdownJobCatagory_SelectedIndexChanged(object sender, EventArgs e)
        {
            seriesName = dropdownJobCatagory.SelectedValue;
            GenerateCode();
        }
        protected void btnNewCatagory_Click(object sender, EventArgs e)
        {
            string SeriesName = txtNwCatagory.Text;
            int SeriesLength = 5;
            string Prefix = SeriesName.Substring(0, 2);
            int LastGeneratedNo = 0;

            int insert = NumberSeriesManager.InsertNewCatagory(SeriesName, SeriesLength, Prefix, LastGeneratedNo);
            if (insert != 0)
            {
                txtNwCatagory.Text = "";
                FillJobCatagory();
            }
        }

        private void GenerateCode()
        {
            preFix = "";
            prefixHF = SKprefixHF.Value;
            curNoHF = SKcurNoHF.Value;
            string companyName = "";

            DataTable seriesDT = NumberSeriesManager.GetDataBySeriesName(seriesName, companyName);
            for (int i = 0; i < seriesDT.Rows.Count; i++)
            {
                preFix = seriesDT.Rows[i]["PreFix"].ToString();
            }

            lblJobCode.Text = NumberSeriesManager.GenerateNumberSeries(companyName, seriesName, preFix, prefixHF, curNoHF);
        }

        private void UpdateTaskNo()
        {
            string companyName = "";
            DataTable seriesDT = NumberSeriesManager.GetDataBySeriesName(seriesName, companyName);
            int lastGenNumber = int.Parse(seriesDT.Rows[0]["LastGeneratedNo"].ToString());
            currentNo = lastGenNumber + 1;
            NumberSeriesManager.UpdateSerialNo(seriesName, currentNo, companyName);
        }

        public void JobDetailObject()
        {
            obj_JobDetail.JobCode = lblJobCode.Text;
            obj_JobDetail.JobDescription = txtJobDescription.Text;
            obj_JobDetail.Responsibilities = txtResponsibilities.Text;
            obj_JobDetail.EducationalReq = txtEducationReq.Text;
            obj_JobDetail.ExperienceReq = txtExpRequirements.Text;
            obj_JobDetail.AdditionalReq = txtAdditionalReq.Text;
            obj_JobDetail.Benifits = txtBenifits.Text;
        }

        public void JobInfoObj()
        {
            obj_jobInfo.JobCode = lblJobCode.Text;
            obj_jobInfo.JobName = lblJobCode.Text;
            obj_jobInfo.Location = lblJobCode.Text;
            obj_jobInfo.Catagory = lblJobCode.Text;
            obj_jobInfo.EmploymentStatus = lblJobCode.Text;
            obj_jobInfo.PostDate = DateTime.Now.Date;
            obj_jobInfo.Deadline = DateTime.Parse(txtDeadline.Text);
            obj_jobInfo.Vacancy = int.Parse(txtVacancy.Text);
            obj_jobInfo.Experience = int.Parse(txtExperienceYrs.Text);
            obj_jobInfo.Salary = decimal.Parse(txtSalary.Text);
            obj_jobInfo.GenderPreference = dropdownGnderPref.SelectedValue;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            JobDetailObject();
            JobInfoObj();
            int insertDetail = JobManager.InsertNewJob(obj_JobDetail);
            int insertInfo = JobManager.InsertNewJobInfo(obj_jobInfo);
        }
    }
}