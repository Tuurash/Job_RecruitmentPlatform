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
    public partial class ApplicationListPage : System.Web.UI.Page
    {

        string ShortlistStatus = "";
        int UpdateTemp = 0;
        int UpdateMailStatus = 0;
        int UpdateTextStatus = 0;
        char[] charsToTrim = { '*', ' ', '\'', };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillgridApplicationList();
                FillShortlistGrid();
            }
        }

        private void FillgridApplicationList()
        {
            DataTable dt = ApplicationManager.GetAllApplication();
            gridApplicationList.DataSource = dt;
            gridApplicationList.DataBind();
        }

        private void FillShortlistGrid()
        {
            DataTable dt = ApplicationManager.getAllShortListApplication();
            if (dt.Rows.Count > 0)
            {
                ShortlistGrid.DataSource = dt;
                ShortlistGrid.DataBind();
            }
            else { divShortlist.Visible = false; }

        }

        protected void btnShowResume_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string ResumePath = btn.CommandArgument.ToString();

            Response.Write("<script>window.open ('" + ResumePath + "','_blank');</script>");
        }

        protected void btnShortList_Click(object sender, EventArgs e)
        {
            ShortlistStatus = "True";
            for (int x = 0; x < gridApplicationList.Rows.Count; x++)
            {
                GridViewRow row = gridApplicationList.Rows[x];
                CheckBox chkbox = (CheckBox)row.FindControl("selectChkBox");
                if (chkbox.Checked == true)
                {
                    int ID = int.Parse(((Label)gridApplicationList.Rows[x].FindControl("lblID")).Text);

                    UpdateTemp = ApplicationManager.UpdateShortlistApplication(ID, ShortlistStatus);
                }
            }
            if (UpdateTemp > 0)
            {
                FillShortlistGrid();
            }
        }

        protected void btnRmv_Click(object sender, EventArgs e)
        {
            ShortlistStatus = "False";
            for (int x = 0; x < ShortlistGrid.Rows.Count; x++)
            {
                GridViewRow row = ShortlistGrid.Rows[x];
                CheckBox chkbox = (CheckBox)row.FindControl("selectChkBox");
                if (chkbox.Checked == true)
                {
                    int ID = int.Parse(((Label)ShortlistGrid.Rows[x].FindControl("lblID")).Text);

                    UpdateTemp = ApplicationManager.UpdateShortlistApplication(ID, ShortlistStatus);
                }
            }
            if (UpdateTemp > 0)
            {
                FillShortlistGrid();
                FillgridApplicationList();
            }
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            divTextBody.Visible = true;
        }
        protected void btnSendMail_Click(object sender, EventArgs e)
        {
            divMailBody.Visible = true;
        }
        protected void cancel_ServerClick(object sender, EventArgs e)
        {
            ClearDIV();
        }

        private void ClearDIV()
        {
            divMailBody.Visible = false;
            divTextBody.Visible = false;
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            string Subject = (txtMailSubject.Text.Trim(charsToTrim)).Replace("'", "");
            string Mail = (txtMailBody.Text.Trim(charsToTrim)).Replace("'", "");

            for (int x = 0; x < ShortlistGrid.Rows.Count; x++)
            {
                GridViewRow row = ShortlistGrid.Rows[x];
                CheckBox chkbox = (CheckBox)row.FindControl("selectChkBox");
                if (chkbox.Checked == true)
                {
                    int ID = int.Parse(((Label)ShortlistGrid.Rows[x].FindControl("lblID")).Text);
                    string Email = ((Label)ShortlistGrid.Rows[x].FindControl("lblEmail")).Text;

                    EmailManager.SendConfirmationMail(Email, Subject, Mail);

                    UpdateMailStatus = ApplicationManager.UpdateMailStatus(ID);
                    if (UpdateMailStatus != 0)
                    {
                        ClearDIV();
                        FillShortlistGrid();
                    }

                }
            }
        }

        protected void btnSendTxt_Click(object sender, EventArgs e)
        {
            string TextBody = txtMessage.Text;

            for (int x = 0; x < ShortlistGrid.Rows.Count; x++)
            {
                GridViewRow row = ShortlistGrid.Rows[x];
                CheckBox chkbox = (CheckBox)row.FindControl("selectChkBox");
                if (chkbox.Checked == true)
                {
                    int ID = int.Parse(((Label)ShortlistGrid.Rows[x].FindControl("lblID")).Text);

                    SMSManager.SendToUser(ID, TextBody);

                    UpdateTextStatus = ApplicationManager.UpdateTextStatus(ID);
                    if (UpdateTextStatus != 0)
                    {
                        ClearDIV();
                        FillShortlistGrid();
                    }
                }
            }

        }


    }
}