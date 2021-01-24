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
using System.Drawing;

namespace PGI_JobPortal.Views
{
    public partial class ApplicationPage : System.Web.UI.Page
    {

        string getjobCode = "";
        string getUserCode = "";
        string file = "";
        char[] charsToTrim = { '*', ' ', '\'', };


        PGI_ApplicationInfo obj_Application = new PGI_ApplicationInfo();
        PGI_CandidateInfo obj_Candidate = new PGI_CandidateInfo();

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

        #region Filling_Form_Data
        private void FillAnonymousData(DataTable dt)
        {
            lblHeader.BackColor = Color.Red;
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
        #endregion

        #region ResumeUpload_section
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
        #endregion

        #region Object_AssignSection

        public void CandidateObject()
        {
            string FullName = txtName.Value;
            Random generator = new Random();
            String r = generator.Next(0, 1000000).ToString("D6");

            lblCandidateCode.Text = r;

            DataTable dt = CandidateManager.CodeExist(r);
            DataTable edt = CandidateManager.EmailExist(txtEmail.Value);

            var results = FullName.Split(' ');

            if (edt.Rows.Count == 0)
            {
                if (dt.Rows.Count != 0)
                {
                    CandidateObject();
                }
                else
                {
                    obj_Candidate.UserCode = lblCandidateCode.Text;
                    if (results.Length > 1)
                    {
                        obj_Candidate.UserFirstName = results[0];
                        obj_Candidate.UserLastName = results[1];
                    }
                    else
                    {
                        obj_Candidate.UserFirstName = results[0];
                        obj_Candidate.UserLastName = "";
                    }

                    obj_Candidate.UserEmail = txtEmail.Value;
                    obj_Candidate.UserPassword = "";
                    obj_Candidate.UserPhoneNo = txtPhoneNumber.Value;
                    obj_Candidate.role = "Candidate";
                    obj_Candidate.UserResume = lblFilePath.Text;
                }
            }

            else
            {
                //Email Exists;
            }
        }

        public void ApplicationObject()
        {

            if (getUserCode != null && getUserCode != "")
            {
                obj_Application.ApplicantCode = getUserCode;
            }
            else { obj_Application.ApplicantCode = lblCandidateCode.Text; }
            obj_Application.JobCode = getjobCode;
            obj_Application.FullName = txtName.Value;
            obj_Application.Email = txtEmail.Value;
            obj_Application.PhoneNumber = txtPhoneNumber.Value;
            obj_Application.CoverLetter = (txtCoverLetter.Value.Trim(charsToTrim)).Replace("'", "");
            obj_Application.ApplyDate = DateTime.Now;
            obj_Application.Resume = lblFilePath.Text;

        }

        #endregion

        #region Insertion_operation
        private int ApplicationInsertOperation()
        {
            int insert = 0;
            ApplicationObject();

            return insert = ApplicationManager.InsertData(obj_Application);

        }

        private int CandidateInsertOperation()
        {
            int InsertCandidate = 0;
            if (txtPhoneNumber.Value != "" && txtEmail.Value != "")
            {
                CandidateObject();
                InsertCandidate = CandidateManager.InsertCandidate(obj_Candidate);
            }
            else
            {
                //something wrong}
            }
            return InsertCandidate;
        }

        #endregion

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
                    CandidateInsertOperation();
                    ApplicationInsertOperation();

                    if (CandidateInsertOperation() > 0 && ApplicationInsertOperation() > 0)
                    {
                        btnApply.Enabled = false;
                        msgSuccess.Visible = true;
                        //ScriptManager.RegisterClientScriptBlock(this, GetType(), "Popup", "Success()", true);
                    }
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