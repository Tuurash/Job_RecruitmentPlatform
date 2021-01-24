using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PGI_JobPortal.Models;
using PGI_JobPortal.Gateway;
using System.Data;

namespace PGI_JobPortal.Manager
{
    public class NumberSeriesManager
    {
        internal static DataTable getAllCatagory()
        {
            return new NumberSeriesGateway().getAllCatagory();
        }

        internal static int InsertNewCatagory(string seriesName, int seriesLength, string prefix, int lastGeneratedNo, string catIcon)
        {
            return new NumberSeriesGateway().InsertNewCatagory(seriesName, seriesLength, prefix, lastGeneratedNo, catIcon);
        }

        internal static System.Data.DataTable GetDataBySeriesName(string seriesName, string companyId)
        {
            return new NumberSeriesGateway().GetDataBySeriesName(seriesName, companyId);
        }

        internal static string GenerateNumberSeries(string companyName, string seriesName, string preFix, string prefixHF, string curNoHF)
        {

            DataTable seriesDT = GetDataBySeriesName(seriesName, companyName);

            prefixHF = preFix;
            int seriesLength = 0;
            try
            {
                seriesLength = int.Parse(seriesDT.Rows[0]["SeriesLength"].ToString());
            }
            catch { }
            int lastGeneratedNo = 0;
            try
            {
                lastGeneratedNo = int.Parse(seriesDT.Rows[0]["LastGeneratedNo"].ToString());
            }
            catch { }
            string lastNo = "";
            try { lastNo = seriesDT.Rows[0]["LastGeneratedNo"].ToString(); }
            catch { }
            int runningNumber = lastGeneratedNo + 1;
            curNoHF = runningNumber.ToString();

            int padleftNo = seriesLength;
            string proCode = preFix + runningNumber.ToString().PadLeft(padleftNo, '0');
            return proCode;

        }

        internal static void UpdateSerialNo(string seriesName, int currentNo, string companyName)
        {
            new NumberSeriesGateway().UpdateLastGeneratedNoOfNummberSeries(seriesName, currentNo, companyName);
        }
    }
}