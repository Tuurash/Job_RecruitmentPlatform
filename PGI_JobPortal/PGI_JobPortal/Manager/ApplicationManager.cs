using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PGI_JobPortal.Models;
using PGI_JobPortal.Gateway;
using System.Data;

namespace PGI_JobPortal.Manager
{
    public class ApplicationManager
    {
        internal static DataTable CheckExist(string getjobCode, string getUserCode)
        {
            return new ApplicationGateway().CheckExist(getjobCode, getUserCode);
        }

        internal static int InsertData(PGI_ApplicationInfo obj_Application)
        {
            return new ApplicationGateway().InsertData(obj_Application);
        }

        internal static DataTable CheckExistAnonymous(string getjobCode, string phoneNo, string email)
        {
            return new ApplicationGateway().CheckExistAnonymous(getjobCode, phoneNo, email);
        }
    }
}