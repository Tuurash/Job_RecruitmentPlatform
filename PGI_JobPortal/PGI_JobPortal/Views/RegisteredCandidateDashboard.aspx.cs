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
    public partial class RegisteredCandidateDashboard : System.Web.UI.Page
    {
        string Skills = "";
        public string Single { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            FillRegisteredCandidateRepeater();
        }

        private void FillRegisteredCandidateRepeater()
        {
            DataTable dt = CandidateManager.GetAllRegisteredCandidateDetail();
            if (dt.Rows.Count > 0)
            {
                RegisteredCandidateRepeater.DataSource = dt;
                RegisteredCandidateRepeater.DataBind();

                Skills = dt.Rows[0]["ProfessionalSkills"].ToString();

                if (Skills != "" && Skills != null)
                {
                    List<Single> Skill_List = Skills.Split(',').ToList();
                }
            }


        }


    }
}