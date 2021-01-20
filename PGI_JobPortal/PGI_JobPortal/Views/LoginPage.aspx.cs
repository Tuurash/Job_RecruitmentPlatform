using System;
using System.Data;
using System.IO;
using System.Net;
using System.Text;
using System.Web.Script.Serialization;
using System.Web.UI;

using PGI_JobPortal.Manager;
using PGI_JobPortal.Models;


namespace PGI_JobPortal.Views
{

    public partial class LoginPage : System.Web.UI.Page
    {
        string clientid = @"624712534406-htkuat9retk65t8qignigsal97cg6brm.apps.googleusercontent.com";
        string clientsecret = @"xeg-PxUNKbVAAWAVNoQT31CP";
        string redirection_url = "http://localhost:58350/Views/LoginPage.aspx";

        string getEmail = "";
        string getPassword = "";
        string getRole = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["code"] != null)
                {
                    GetToken(Request.QueryString["code"].ToString());

                }
            }
        }


        #region GoogleAccount_LOGIN

        protected void gLogin_Click(object sender, ImageClickEventArgs e)
        {
            string uri = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(uri);
        }

        public void GetToken(string code)
        {
            string uri = "https://accounts.google.com/o/oauth2/token";
            string poststring = "grant_type=authorization_code&code=" + code + "&client_id=" + clientid + "&client_secret=" + clientsecret + "&redirect_uri=" + redirection_url + "";
            var request = (HttpWebRequest)WebRequest.Create(uri);
            request.ContentType = "application/x-www-form-urlencoded";
            request.Method = "POST";
            UTF8Encoding utfenc = new UTF8Encoding();
            byte[] bytes = utfenc.GetBytes(poststring);
            Stream outputstream = null;
            try
            {
                request.ContentLength = bytes.Length;
                outputstream = request.GetRequestStream();
                outputstream.Write(bytes, 0, bytes.Length);
            }
            catch
            { }
            var response = (HttpWebResponse)request.GetResponse();
            var streamReader = new StreamReader(response.GetResponseStream());
            string responseFromServer = streamReader.ReadToEnd();
            JavaScriptSerializer js = new JavaScriptSerializer();
            TokenModel obj = js.Deserialize<TokenModel>(responseFromServer);
            GetuserProfile(obj.access_token);
        }

        public void GetuserProfile(string accesstoken)
        {
            string url = "https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token=" + accesstoken + "";
            WebRequest request = WebRequest.Create(url);
            request.Credentials = CredentialCache.DefaultCredentials;
            WebResponse response = request.GetResponse();
            Stream dataStream = response.GetResponseStream();
            StreamReader reader = new StreamReader(dataStream);
            string responseFromServer = reader.ReadToEnd();
            reader.Close();
            response.Close();
            JavaScriptSerializer js = new JavaScriptSerializer();
            UserModel userinfo = js.Deserialize<UserModel>(responseFromServer);

            VerifyGoogleInfo(userinfo);

        }

        private void VerifyGoogleInfo(UserModel userinfo)
        {
            string googleID = userinfo.id;
            DataTable dt = CandidateManager.getCandidateByGoogleID(googleID);
            if (dt.Rows.Count != 0)
            {
                RedirectUser(dt);

            }
        }


        #endregion

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Value != "" && txtPassword.Value != "")
            {
                getEmail = txtEmail.Value; getPassword = txtPassword.Value;

                DataTable dt = CandidateManager.getCandidate(getEmail, getPassword);

                if (dt.Rows.Count > 0)
                {
                    RedirectUser(dt);
                }
                else
                {
                    //Something Wrong}
                }
            }
        }

        private void RedirectUser(DataTable dt)
        {
            Session["userEmail"] = dt.Rows[0]["UserEmail"].ToString();
            Session["Name"] = dt.Rows[0]["UserFirstName"].ToString() + " " + dt.Rows[0]["UserLastName"].ToString();
            Session["UserPhoneNo"] = dt.Rows[0]["UserPhoneNo"].ToString();
            Session["UserProfileImage"] = dt.Rows[0]["UserPhoto"].ToString();
            Session["UserCode"] = dt.Rows[0]["UserCode"].ToString();
            Session["UserRole"] = dt.Rows[0]["role"].ToString();

            getRole = dt.Rows[0]["role"].ToString();

            if (getRole == "Candidate")
            {
                Response.Redirect("UserProfilePage.aspx");
            }
            else if (getRole == "Admin")
            {
                Response.Redirect("JobPostingPage.aspx");
            }
        }

    }
}