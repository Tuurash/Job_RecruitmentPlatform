using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PGI_JobPortal.Manager;

namespace PGI_JobPortal.Views
{
    public partial class ApplicationListPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillgridApplicationList();
            }
        }

        private void FillgridApplicationList()
        {
            DataTable dt = ApplicationManager.GetAllApplication();
            gridApplicationList.DataSource = dt;
            gridApplicationList.DataBind();
        }

        protected void btnShowResume_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string ResumePath = btn.CommandArgument.ToString();

            Response.Write("<script>window.open ('" + ResumePath + "','_blank');</script>");
        }

    }
}