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

        internal static DataTable ApplicationPhoneNoExistByID(int iD)
        {
            return new CandidateGateway().ApplicationPhoneNoExistByID(iD);
        }

        internal static int UpdateOTPByPhoneNumber(string getPhoneNo, string r)
        {
            return new CandidateGateway().UpdateOTPByPhoneNumber(getPhoneNo, r);
        }

        internal static DataTable ApplicationEmailExist(string email)
        {
            return new CandidateGateway().ApplicationEmailExist(email);
        }

        internal static DataTable CodeExist(string r)
        {
            return new CandidateGateway().CodeExist(r);
        }

        internal static DataTable EmailExist(string email)
        {
            return new CandidateGateway().EmailExist(email);
        }

        internal static DataTable getCandidate(string getOTP, string getPhoneNumber)
        {
            return new CandidateGateway().getCandidate(getOTP, getPhoneNumber);
        }

        internal static int UpdateCandidateInfo(PGI_CandidateInfo obj_candidate, string getUserCode)
        {
            return new CandidateGateway().UpdateCandidateInfo(obj_candidate, getUserCode);
        }

        internal static DataTable getCandidateByCode(string getUserCode)
        {
            return new CandidateGateway().getCandidateByCode(getUserCode);
        }

        internal static DataTable getCandidateByGoogleID(string googleID)
        {
            return new CandidateGateway().getCandidateByGoogleID(googleID);
        }

        internal static DataTable getCandidateByPhoneNumber(string getPhoneNo)
        {
            return new CandidateGateway().getCandidateByPhoneNumber(getPhoneNo);
        }
    }
}