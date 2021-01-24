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
            query = @"INSERT INTO PGI_CandidateInfo (UserCode,UserFirstName,UserLastName,UserEmail,UserPhoneNo,UserPassword,role,UserResume) VALUES ('" + obj_Candidate.UserCode + "','" + obj_Candidate.UserFirstName + "','" + obj_Candidate.UserLastName + "','" + obj_Candidate.UserEmail + "','" + obj_Candidate.UserPhoneNo + "','" + obj_Candidate.UserPassword + "','" + obj_Candidate.role + "','" + obj_Candidate.UserResume + "')";
            return ExecuteNonQuery(query);
        }

        internal DataTable GetAllRegisteredCandidateDetail()
        {
            query = @"select t3.* from (select t2.*,ISNULL(ExperienceCount,0) as ExperienceCount,isnull(DATEDIFF(MONTH,b,a),0) as Experience from (select t1.*,EducationLevel,Result,PassingYear from  (select t.*,Gender,LinkedinProfile,ProfessionalSkills from (select UserCode,UserFirstName+' '+UserLastName as FullName,UserEmail,UserPhoto,UserResume from PGI_CandidateInfo)as t left outer join ( select * from PGI_Candidate_PersonalDetails)PGI_Candidate_PersonalDetails on t.UserCode=PGI_Candidate_PersonalDetails.UserCode)as t1 left outer join ( select MAX(PassingYear) as PassingYear,EducationLevel,Result,InstituteName,UserCode from PGI_Candidate_EducationDetails group by EducationLevel,Result,UserCode,InstituteName ) PGI_Candidate_EducationDetails on t1.UserCode=PGI_Candidate_EducationDetails.UserCode) as t2 left outer join (select count(UserCode)as ExperienceCount,Min(EmployeeFrom) as a,MAX(EmployeeEnd) as b ,UserCode from PGI_Candidate_EmploymentDetails group by UserCode) PGI_Candidate_EmploymentDetails on t2.UserCode=PGI_Candidate_EmploymentDetails.UserCode)as t3";
            return ExecuteQuery(query);
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