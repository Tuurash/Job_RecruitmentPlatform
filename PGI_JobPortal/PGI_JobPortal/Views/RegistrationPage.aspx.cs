using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using PGI_JobPortal.Models;
using PGI_JobPortal.Manager;
using System.Data;

namespace PGI_JobPortal.Views
{
    public partial class RegistrationPage : System.Web.UI.Page
    {

        PGI_CandidateInfo obj_Candidate = new PGI_CandidateInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        public void CandidateObject()
        {
            Random generator = new Random();
            String r = generator.Next(0, 1000000).ToString("D6");

            DataTable dt = CandidateManager.CodeExist(r);
            DataTable edt = CandidateManager.EmailExist(txtEmail.Value);

            if (edt.Rows.Count == 0)
            {
                if (dt.Rows.Count != 0)
                {
                    CandidateObject();
                }
                else
                {
                    obj_Candidate.UserCode = r;
                    obj_Candidate.UserFirstName = txtFirstName.Value;
                    obj_Candidate.UserLastName = txtLastName.Value;
                    obj_Candidate.UserEmail = txtEmail.Value;
                    obj_Candidate.UserPassword = txtPassword.Value;
                    obj_Candidate.UserPhoneNo = txtMobileNo.Value;
                    obj_Candidate.role = "Candidate";
                }
            }
            else
            {
                //Email Exists;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPassword.Value == txtPasswordConfirm.Value)
            {
                CandidateObject();
                int InsertCandidate = CandidateManager.InsertCandidate(obj_Candidate);
                if (InsertCandidate != 0)
                {
                    Response.Redirect("LoginPage.aspx");
                }
                else
                {
                    //something wrong
                }
            }
            else
            {
                //something wrong}
            }
        }
    }
}