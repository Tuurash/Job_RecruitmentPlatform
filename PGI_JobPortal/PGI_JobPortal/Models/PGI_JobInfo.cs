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
    
    public partial class PGI_JobInfo
    {
        public int ID { get; set; }
        public string JobCode { get; set; }
        public string JobName { get; set; }
        public string Location { get; set; }
        public string Catagory { get; set; }
        public string EmploymentStatus { get; set; }
        public string Workplace { get; set; }
        public Nullable<System.DateTime> PostDate { get; set; }
        public Nullable<System.DateTime> Deadline { get; set; }
        public Nullable<int> Vacancy { get; set; }
        public Nullable<int> Experience { get; set; }
        public Nullable<decimal> Salary { get; set; }
        public string GenderPreference { get; set; }
    }
}
