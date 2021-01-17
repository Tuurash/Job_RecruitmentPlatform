using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PGI_JobPortal.Models;
using PGI_JobPortal.Gateway;
using System.Data;

namespace PGI_JobPortal.Manager
{
    public class CandidateManager
    {
        internal static int InsertCandidate(PGI_CandidateInfo obj_Candidate)
        {
            return new CandidateGateway().InsertCandidate(obj_Candidate);
        }

        internal static DataTable CodeExist(string r)
        {
            return new CandidateGateway().CodeExist(r);
        }

        internal static DataTable EmailExist(string email)
        {
            return new CandidateGateway().EmailExist(email);
        }

        internal static DataTable getCandidate(string getEmail, string getPassword)
        {
            return new CandidateGateway().getCandidate(getEmail, getPassword);
        }
    }
}