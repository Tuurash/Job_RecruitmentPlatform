//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PGI_JobPortal.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PGI_Candidate_PersonalDetails
    {
        public int ID { get; set; }
        public string UserCode { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public Nullable<System.DateTime> DateOfBirth { get; set; }
        public string MaritalStatus { get; set; }
        public string NID { get; set; }
        public string PassportNo { get; set; }
        public string MobileNo { get; set; }
        public string PresentAddress { get; set; }
        public string PermanentAddress { get; set; }
        public string LinkedinProfile { get; set; }
    }
}