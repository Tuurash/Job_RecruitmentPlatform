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

        protected void Page_Load(object sender, EventArgs e)
        {
            FillRegisteredCandidateRepeater();
        }

        private List<string> FillRegisteredCandidateRepeater()
        {
            List<string> Skill_List = new List<string>();
            DataTable dt = CandidateManager.GetAllRegisteredCandidateDetail();
            if (dt.Rows.Count > 0)
            {
                RegisteredCandidateRepeater.DataSource = dt;
                RegisteredCandidateRepeater.DataBind();

                Skills = dt.Rows[0]["ProfessionalSkills"].ToString();

                if (Skills != "" && Skills != null)
                {
                    Skill_List = Skills.Split(',').ToList();
                    return Skill_List;
                }


            }

            return Skill_List;
        }

        protected void RegisteredCandidateRepeater_ItemCommand(object source, RepeaterCommandEventArgs args)
        {
            if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater childRepeater = (Repeater)args.Item.FindControl("RepeaterSkills");

                childRepeater.DataSource = FillRegisteredCandidateRepeater();
                childRepeater.DataBind();
            }
        }
    }

    public class SingleSkill
    {
        public string Skill { get; set; }
    }
}