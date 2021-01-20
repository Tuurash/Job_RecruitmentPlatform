using PGI_JobPortal.Manager;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using PGI_JobPortal.Models;
using System.IO;

namespace PGI_JobPortal.Views
{
    public partial class ApplicationPage : System.Web.UI.Page
    {
        string getjobCode = "";
        string getUserCode = "";
        string file = "";
        char[] charsToTrim = { '*', ' ', '\'', };


        PGI_ApplicationInfo obj_Application = new PGI_ApplicationInfo();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserCode"] != null)
            {
                getUserCode = Session["UserCode"].ToString();

                FillApplicantData();
            }


            if (Request.QueryString["JobCode"] != null)
            {
                getjobCode = Request.QueryString["JobCode"];
            }
        }

        private void FillAnonymousData(DataTable dt)
        {
            lblHeader.Text = "Already Applied";
            btnApply.Visible = false;

            txtName.Value = dt.Rows[0]["FullName"].ToString();
            txtEmail.Value = dt.Rows[0]["Email"].ToString();
            txtPhoneNumber.Value = dt.Rows[0]["PhoneNumber"].ToString();
            EmbedResume.Src = dt.Rows[0]["Resume"].ToString();
        }

        private void FillApplicantData()
        {

            DataTable cdt = ApplicationManager.CheckExist(getjobCode, getUserCode);

            if (cdt.Rows.Count > 0)
            {
                lblHeader.Text = "Already Applied";
                btnApply.Visible = false;

                txtName.Value = cdt.Rows[0]["FullName"].ToString();
                txtEmail.Value = cdt.Rows[0]["Email"].ToString();
                txtPhoneNumber.Value = cdt.Rows[0]["PhoneNumber"].ToString();
                EmbedResume.Src = cdt.Rows[0]["Resume"].ToString();

            }
            else
            {
                lblHeader.Text = "Check Your Information";

                DataTable dt = CandidateManager.getCandidateByCode(getUserCode);

                txtName.Value = dt.Rows[0]["UserFirstName"].ToString() + " " + dt.Rows[0]["UserLastName"].ToString();
                txtEmail.Value = dt.Rows[0]["UserEmail"].ToString();
                txtPhoneNumber.Value = dt.Rows[0]["UserPhoneNo"].ToString();

                if (dt.Rows[0]["UserResume"].ToString() != null && dt.Rows[0]["UserResume"].ToString() != "")
                {
                    EmbedResume.Src = dt.Rows[0]["UserResume"].ToString();
                }
            }

        }

        public void ResumeUpload()
        {
            string path = Path.GetFileName(FileResume.FileName);
            path = path.Replace(" ", "");
            FileResume.SaveAs(Server.MapPath("../FIle/other/") + path);

            file = FileResume.FileName;
            lblFilePath.Text = "../FIle/other/" + file;
            EmbedResume.Src = lblFilePath.Text;

            obj_Application.Resume = lblFilePath.Text;

            divResumeUpload.Visible = false;
            btnChange.Visible = true;

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileResume.HasFiles)
            {
                ResumeUpload();
            }

        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            divResumeUpload.Visible = true;
            btnChange.Visible = false;
        }

        public void ApplicationObject()
        {

            if (getUserCode != null && getUserCode != "")
            {
                obj_Application.ApplicantCode = getUserCode;
            }
            else { obj_Application.ApplicantCode = "Anonymous"; }
            obj_Application.JobCode = getjobCode;
            obj_Application.FullName = txtName.Value;
            obj_Application.Email = txtEmail.Value;
            obj_Application.PhoneNumber = txtPhoneNumber.Value;
            obj_Application.CoverLetter = (txtCoverLetter.Value.Trim(charsToTrim)).Replace("'", "");
            obj_Application.ApplyDate = DateTime.Now;

        }

        private void ApplicationInsertOperation()
        {
            ApplicationObject();
            obj_Application.Resume = lblFilePath.Text;

            int insert = ApplicationManager.InsertData(obj_Application);
            if (insert > 0)
            {
                //Notify
                Response.Redirect("JobListIndex.aspx");
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            if (EmbedResume.Src != "" && EmbedResume.Src != null)
            {


                string phoneNo = txtPhoneNumber.Value;
                string Email = txtEmail.Value;

                DataTable dt = ApplicationManager.CheckExistAnonymous(getjobCode, phoneNo, Email);
                if (dt.Rows.Count > 0)
                {
                    FillAnonymousData(dt);
                }
                else
                {
                    ApplicationInsertOperation();
                }
            }
            else
            {
                lblHeader.BackColor = System.Drawing.Color.Red;
                lblHeader.Text = "You need to Upload Resume/CV";
            }
        }


    }
}