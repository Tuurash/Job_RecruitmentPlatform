using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using PGI_JobPortal.Models;

namespace PGI_JobPortal.Gateway
{
    public class JobGateway : DBConnector
    {
        string query = "";

        internal int InsertNewJob(PGI_JobDetails obj_JobDetail)
        {
            query = @"INSERT INTO PGI_JobDetails (JobCode,JobDescription,Responsibilities,EducationalReq,ExperienceReq,AdditionalReq,Benifits) VALUES ('" + obj_JobDetail.JobCode + "','" + obj_JobDetail.JobDescription + "','" + obj_JobDetail.Responsibilities + "','" + obj_JobDetail.EducationalReq + "','" + obj_JobDetail.ExperienceReq + "' ,'" + obj_JobDetail.AdditionalReq + "','" + obj_JobDetail.Benifits + "') ";
            return ExecuteNonQuery(query);
        }

        internal DataTable getAllJobList()
        {
            query = @"select * from PGI_JobInfo";
            return ExecuteQuery(query);
        }

        internal DataTable GetJobDetailByCode(string getjobCode)
        {
            query = @"select * from PGI_JobDetails where JobCode='" + getjobCode + "'";
            return ExecuteQuery(query);
        }

        internal DataTable GetJobInfoByCode(string getjobCode)
        {
            query = @"select * from PGI_JobInfo where JobCode='" + getjobCode + "'";
            return ExecuteQuery(query);
        }

        internal int InsertNewJobInfo(PGI_JobInfo obj_jobInfo)
        {
            query = @"INSERT INTO PGI_JobInfo(JobCode,JobName,Location,Catagory,EmploymentStatus,Workplace,PostDate,Deadline,Vacancy,Experience,Salary,GenderPreference)
                      VALUES ('" + obj_jobInfo.JobCode + "','" + obj_jobInfo.JobName + "','" + obj_jobInfo.Location + "','" + obj_jobInfo.Catagory + "','" + obj_jobInfo.EmploymentStatus + "','" + obj_jobInfo.Workplace + "','" + obj_jobInfo.PostDate + "','" + obj_jobInfo.Deadline + "'," + obj_jobInfo.Vacancy + "," + obj_jobInfo.Experience + "," + obj_jobInfo.Salary + ",'" + obj_jobInfo.GenderPreference + "') ";
            return ExecuteNonQuery(query);
        }
    }
}