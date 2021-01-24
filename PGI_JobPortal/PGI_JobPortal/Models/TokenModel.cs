using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PGI_JobPortal.Models
{
    public class TokenModel
    {
        public string access_token { get; set; }
        public string token_type { get; set; }
        public int expires_in { get; set; }
        public string refresh_token { get; set; }

    }
}