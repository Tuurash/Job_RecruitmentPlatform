using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using PGI_JobPortal.Models;

namespace PGI_JobPortal.Gateway
{
    public class NumberSeriesGateway : DBConnector
    {
        string query = "";

        internal DataTable getAllCatagory()
        {
            query = "select * from SKode_NumberSeries_T";
            return ExecuteQuery(query);
        }

        internal int InsertNewCatagory(string seriesName, int seriesLength, string prefix, int lastGeneratedNo)
        {
            query = @"INSERT INTO SKode_NumberSeries_T (SeriesName ,SeriesLength ,Prefix ,LastGeneratedNo ,CompanyID) VALUES ('" + seriesName + "'," + seriesLength + ",'" + prefix + "'," + lastGeneratedNo + ",'') ";
            return ExecuteNonQuery(query);
        }

        internal System.Data.DataTable GetDataBySeriesName(string seriesName, string companyId)
        {
            query = "Select * from SKode_NumberSeries_T Where CompanyID='" + companyId + "' and SeriesName='" + seriesName + "'";
            return ExecuteQuery(query);
        }

        internal void UpdateLastGeneratedNoOfNummberSeries(string seriesName, int currentNo, string companyName)
        {
            query = "UPDATE SKode_NumberSeries_T Set LastGeneratedNo ='" + currentNo + "'  Where SeriesName='" + seriesName + "' AND CompanyID='" + companyName + "'";
            ExecuteNonQuery(query);
        }
    }
}