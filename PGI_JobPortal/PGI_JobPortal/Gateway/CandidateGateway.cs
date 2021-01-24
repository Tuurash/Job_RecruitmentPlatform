﻿using System;
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
            query = @"INSERT INTO PGI_CandidateInfo (UserCode,UserFirstName,UserLastName,UserEmail,UserPhoneNo,UserPassword,role,UserResume) VALUES ('" + obj_Candidate.UserCode + "','" + obj_Candidate.UserFirstName + "','" + obj_Candidate.UserLastName + "','" + obj_Candidate.UserEmail + "','" + obj_Candidate.UserPhoneNo + "','" + obj_Candidate.UserPassword + "','" + obj_Candidate.role + "','" + obj_Candidate.UserResume + "')";
            return ExecuteNonQuery(query);
        }

        internal int UpdateOTPByPhoneNumber(string getPhoneNo, string r)
        {
            query = @"update PGI_CandidateInfo set OTP='" + r + "' where UserPhoneNo='" + getPhoneNo + "' ";
            return ExecuteNonQuery(query);
        }

        internal DataTable ApplicationPhoneNoExistByID(int iD)
        {
            query = "select * from PGI_ApplicationInfo where ID=" + iD;
            return ExecuteQuery(query);
        }

        internal DataTable ApplicationEmailExist(string email)
        {
            query = "select * from PGI_ApplicationInfo where Email='" + email + "'";
            return ExecuteQuery(query);
        }

        internal DataTable EmailExist(string email)
        {
            query = "select * from PGI_CandidateInfo where UserEmail='" + email + "'";
            return ExecuteQuery(query);
        }

        internal DataTable getCandidate(string getOTP, string getPhoneNumber)
        {
            query = "select * from PGI_CandidateInfo where OTP='" + getOTP + "' and UserPhoneNo='" + getPhoneNumber + "'";
            return ExecuteQuery(query);
        }

        internal DataTable getCandidateByCode(string getUserCode)
        {
            query = "select * from PGI_CandidateInfo where UserCode='" + getUserCode + "'";
            return ExecuteQuery(query);
        }

        internal DataTable getCandidateByPhoneNumber(string getPhoneNo)
        {
            query = "select * from PGI_CandidateInfo where UserPhoneNo='" + getPhoneNo + "'";
            return ExecuteQuery(query);
        }

        internal DataTable getCandidateByGoogleID(string googleID)
        {
            query = "select * from PGI_CandidateInfo where GoogleID='" + googleID + "'";
            return ExecuteQuery(query);
        }

        internal int UpdateCandidateInfo(PGI_CandidateInfo obj_candidate, string getUserCode)
        {
            query = "UPDATE PGI_CandidateInfo SET UserFirstName ='" + obj_candidate.UserFirstName + "',UserLastName ='" + obj_candidate.UserLastName + "',UserPhoto= '" + obj_candidate.UserPhoto + "',GoogleConnected= '" + obj_candidate.GoogleConnected + "' ,GoogleID= '" + obj_candidate.GoogleID + "' WHERE UserCode='" + getUserCode + "'";
            return ExecuteNonQuery(query);
        }

        internal DataTable CodeExist(string r)
        {
            query = "select * from PGI_CandidateInfo where UserCode='" + r + "'";
            return ExecuteQuery(query);
        }
    }
}