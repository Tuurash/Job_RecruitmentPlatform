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
    }
}