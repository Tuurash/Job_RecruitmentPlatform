using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PGI_JobPortal.Models;
using PGI_JobPortal.Gateway;
using System.Data;

namespace PGI_JobPortal.Manager
{
    public class JobManager
    {
        internal static int InsertNewJob(PGI_JobDetails obj_JobDetail)
        {
            return new JobGateway().InsertNewJob(obj_JobDetail);
        }

        internal static int InsertNewJobInfo(PGI_JobInfo obj_jobInfo)
        {
            return new JobGateway().InsertNewJobInfo(obj_jobInfo);
        }

        internal static DataTable getAllJobList()
        {
            return new JobGateway().getAllJobList();
        }

        internal static DataTable GetJobDetailByCode(string getjobCode)
        {
            return new JobGateway().GetJobDetailByCode(getjobCode);
        }

        internal static DataTable getAllJobListByCatagory(string getJobCatagory)
        {
            return new JobGateway().getAllJobListByCatagory(getJobCatagory);
        }

        internal static DataTable GetJobInfoByCode(string getjobCode)
        {
            return new JobGateway().GetJobInfoByCode(getjobCode);
        }

        internal static int UpdateJobStatus(string setStatus, string getjobCode)
        {
            return new JobGateway().UpdateJobStatus(setStatus, getjobCode);
        }
    }
}