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

        internal static DataTable GetAllApplication(string dateSort)
        {
            return new ApplicationGateway().GetAllApplication(dateSort);
        }

        internal static DataTable CheckExistAnonymous(string getjobCode, string phoneNo, string email)
        {
            return new ApplicationGateway().CheckExistAnonymous(getjobCode, phoneNo, email);
        }

        internal static int UpdateShortlistApplication(int iD, string shortlistStatus)
        {
            return new ApplicationGateway().UpdateShortlistApplication(iD, shortlistStatus);
        }

        internal static DataTable getAllShortListApplication()
        {
            return new ApplicationGateway().getAllShortListApplication();
        }

        internal static int UpdateMailStatus(int iD)
        {
            return new ApplicationGateway().UpdateMailStatus(iD);
        }

        internal static int UpdateTextStatus(int iD)
        {
            return new ApplicationGateway().UpdateTextStatus(iD);
        }

        internal static DataTable GetApplicationByCatagory(string getCatagory, string dateSort)
        {
            return new ApplicationGateway().GetApplicationByCatagory(getCatagory, dateSort);
        }
    }
}