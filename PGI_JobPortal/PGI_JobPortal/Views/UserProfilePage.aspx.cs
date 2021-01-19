using PGI_JobPortal.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using PGI_JobPortal.Models;
using PGI_JobPortal.Manager;
using System.Data;

namespace PGI_JobPortal.Views
{
    public partial class UserProfilePage : System.Web.UI.Page
    {
        string clientid = @"624712534406-htkuat9retk65t8qignigsal97cg6brm.apps.googleusercontent.com";
        string clientsecret = @"xeg-PxUNKbVAAWAVNoQT31CP";
        string redirection_url = "http://localhost:58350/Views/UserProfilePage.aspx";
        //string uri = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
        string uri = "https://accounts.google.com/o/oauth2/token";

        string getEmail = "";
        string getPassword = "";
        string getRole = "";
        string getUserCode = "";

        PGI_CandidateInfo obj_candidate = new PGI_CandidateInfo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserCode"] != null)
            {
                getUserCode = Session["UserCode"].ToString();

                FillAvailableFields();
            }
            else { Response.Redirect("LoginPage.aspx"); }

            if (!IsPostBack)
            {
                if (Request.QueryString["code"] != null)
                {
                    GetToken(Request.QueryString["code"].ToString());

                }
            }
        }

        private void FillAvailableFields()
        {
            DataTable dt = CandidateManager.getCandidateByCode(getUserCode);
            if (dt.Rows.Count != 0)
            {
                if (dt.Rows[0]["GoogleConnected"].ToString() == "True")
                {
                    btnCnctGoogle.Visible = false;
                }
                txtFirstName.Text = dt.Rows[0]["UserFirstName"].ToString();
                txtLastName.Text = dt.Rows[0]["UserLastName"].ToString();
                ProfilePic.ImageUrl = dt.Rows[0]["UserPhoto"].ToString();

            }
        }

        #region GoogleAccount

        public void GetToken(string code)
        {

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

            FillGoogleInfo(userinfo);

        }

        private void FillGoogleInfo(UserModel userinfo)
        {
            obj_candidate.GoogleConnected = "True";
            obj_candidate.GoogleID = userinfo.id;
            obj_candidate.UserFirstName = userinfo.given_name;
            obj_candidate.UserLastName = userinfo.family_name;
            obj_candidate.UserPhoto = userinfo.picture;

            txtFirstName.Text = userinfo.given_name;
            txtLastName.Text = userinfo.family_name;

            int updateCandidateInfo = CandidateManager.UpdateCandidateInfo(obj_candidate, getUserCode);
            if (updateCandidateInfo > 0)
            {
                Response.Redirect("UserProfilePage.aspx");
            }
        }

        #endregion

        protected void btnSubmitPersonalInfo_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddEducationInfo_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddEmployment_Click(object sender, EventArgs e)
        {

        }

        protected void btnProfilePic_Click1(object sender, ImageClickEventArgs e)
        {

        }

        protected void btnCnctGoogle_ServerClick(object sender, EventArgs e)
        {
            string uri = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(uri);
        }
    }
}