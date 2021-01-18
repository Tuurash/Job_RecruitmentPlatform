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
        string seriesName = "TaskID";
        string prefixHF = "";
        string curNoHF = "";
        string preFix = "";
        int currentNo;

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
            dropdownJobCatagory.DataBind();
        }
        protected void btnNewCatagory_Click(object sender, EventArgs e)
        {
            string CatagoryName = txtNwCatagory.Text;
            string CatagoryID = CatagoryName.Substring(0, 1);

        }


        //private void GenerateCode()
        //{
        //    preFix = "";
        //    prefixHF = SKprefixHF.Value;
        //    curNoHF = SKcurNoHF.Value;
        //    string companyName = "";

        //    DataTable seriesDT = SKode_NumberSeriesManager.GetDataBySeriesName(seriesName, companyName);
        //    for (int i = 0; i < seriesDT.Rows.Count; i++)
        //    {
        //        preFix = seriesDT.Rows[i]["PreFix"].ToString();
        //    }

        //    TaskIDLbl.Text = SKode_NumberSeriesGenerator.GenerateNumberSeries(companyName, seriesName, preFix, prefixHF, curNoHF);
        //}

        protected void dropdownJobCatagory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}