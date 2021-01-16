using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PGI_JobPortal.Models
{
    public class UserModel
    {
        public string id { get; set; }
        public string name { get; set; }
        public string given_name { get; set; }
        public string family_name { get; set; }
        public string link { get; set; }
        public string picture { get; set; }
        public string gender { get; set; }
        public string locale { get; set; }
    }
}