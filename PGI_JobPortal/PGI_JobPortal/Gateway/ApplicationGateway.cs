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

            query = @"INSERT INTO PGI_ApplicationInfo (JobCode,ApplicantCode,FullName,Email,PhoneNumber,Resume,ApplyDate,CoverLetter,isShortListed,SentMail,SentMessage) VALUES
                     ('" + obj_Application.JobCode + "','" + obj_Application.ApplicantCode + "','" + obj_Application.FullName + "','" + obj_Application.Email + "' ,'" + obj_Application.PhoneNumber + "' ,'" + obj_Application.Resume + "','" + obj_Application.ApplyDate + "','" + obj_Application.CoverLetter + "','False','False','False')";

            return ExecuteNonQuery(query);
        }

        internal int UpdateShortlistApplication(int iD, string shortlistStatus)
        {
            query = @"update PGI_ApplicationInfo set isShortListed='" + shortlistStatus + "' where ID=" + iD;
            return ExecuteNonQuery(query);
        }

        internal int UpdateMailStatus(int iD)
        {
            query = @"update PGI_ApplicationInfo set SentMail='True' where ID=" + iD;
            return ExecuteNonQuery(query);
        }

        internal int UpdateTextStatus(int iD)
        {
            query = @"update PGI_ApplicationInfo set SentMessage='True' where ID=" + iD;
            return ExecuteNonQuery(query);
        }

        internal DataTable getAllShortListApplication()
        {

            query = @"select t1.*from(select Catagory, JobName, t.* from(select * from PGI_ApplicationInfo where isShortListed = 'True') as t 
                      left outer join(select * from PGI_JobInfo) PGI_JobInfo on t.JobCode = PGI_JobInfo.JobCode) as t1";
            return ExecuteQuery(query);
        }

        internal DataTable GetAllApplication()
        {
            query = @"select t1.* from (select Catagory,JobName,t.* from (select * from PGI_ApplicationInfo where isShortListed='False') as t left outer join(select * from PGI_JobInfo) PGI_JobInfo on t.JobCode=PGI_JobInfo.JobCode)as t1";

            return ExecuteQuery(query);
        }

        internal DataTable CheckExistAnonymous(string getjobCode, string phoneNo, string email)
        {
            query = @"select * from PGI_ApplicationInfo where JobCode='" + getjobCode + "' and PhoneNumber='" + phoneNo + "' and Email='" + email + "'";
            return ExecuteQuery(query);
        }
    }
}