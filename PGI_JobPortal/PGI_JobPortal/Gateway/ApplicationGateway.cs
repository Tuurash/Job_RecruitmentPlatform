using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using PGI_JobPortal.Models;

namespace PGI_JobPortal.Gateway
{
    public class ApplicationGateway : DBConnector
    {
        string query = "";

        internal DataTable CheckExist(string getjobCode, string getUserCode)
        {
            query = @"select * from PGI_ApplicationInfo where JobCode='" + getjobCode + "' and ApplicantCode='" + getUserCode + "'";
            return ExecuteQuery(query);
        }

        internal int InsertData(PGI_ApplicationInfo obj_Application)
        {
            query = @"INSERT INTO PGI_ApplicationInfo (JobCode,ApplicantCode,FullName,Email,PhoneNumber,Resume,ApplyDate,CoverLetter) VALUES
                     ('" + obj_Application.JobCode + "','" + obj_Application.ApplicantCode + "','" + obj_Application.FullName + "','" + obj_Application.Email + "' ,'" + obj_Application.PhoneNumber + "' ,'" + obj_Application.Resume + "','" + obj_Application.ApplyDate + "','" + obj_Application.CoverLetter + "')";

            return ExecuteNonQuery(query);
        }

        internal DataTable CheckExistAnonymous(string getjobCode, string phoneNo, string email)
        {
            query = @"select * from PGI_ApplicationInfo where JobCode='" + getjobCode + "' and PhoneNumber='" + phoneNo + "' and Email='" + email + "'";
            return ExecuteQuery(query);
        }
    }
}