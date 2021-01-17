using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using PGI_JobPortal.Manager;
using PGI_JobPortal.Models;

namespace PGI_JobPortal.Gateway
{
    public class CandidateGateway : DBConnector
    {
        string query = "";

        internal int InsertCandidate(PGI_CandidateInfo obj_Candidate)
        {
            query = @"INSERT INTO PGI_CandidateInfo (UserCode,UserFirstName,UserLastName,UserEmail,UserPhoneNo,UserPassword) VALUES ('" + obj_Candidate.UserCode + "','" + obj_Candidate.UserFirstName + "','" + obj_Candidate.UserLastName + "','" + obj_Candidate.UserEmail + "','" + obj_Candidate.UserPhoneNo + "','" + obj_Candidate.UserPassword + "')";
            return ExecuteNonQuery(query);
        }

        internal DataTable EmailExist(string email)
        {
            query = "select * from PGI_CandidateInfo where UserEmail='" + email + "'";
            return ExecuteQuery(query);
        }

        internal DataTable CodeExist(string r)
        {
            query = "select * from PGI_CandidateInfo where UserCode='" + r + "'";
            return ExecuteQuery(query);
        }
    }
}