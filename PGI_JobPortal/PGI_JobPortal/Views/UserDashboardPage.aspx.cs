﻿using System;
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

namespace PGI_JobPortal.Views
{
    public partial class UserDashboardPage : System.Web.UI.Page
    {

        string clientid = @"624712534406-htkuat9retk65t8qignigsal97cg6brm.apps.googleusercontent.com";
        string clientsecret = @"xeg-PxUNKbVAAWAVNoQT31CP";
        string redirection_url = "http://localhost:58350/Views/UserDashboardPage.aspx";
        string url = "https://accounts.google.com/o/oauth2/token";

        TokenModel obj_token = new TokenModel();
        UserModel obj_user = new UserModel();

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

        public void GetToken(string code)
        {

            string poststring = "grant_type=authorization_code&code=" + code + "&client_id=" + clientid + "&client_secret=" + clientsecret + "&redirect_uri=" + redirection_url + "";
            var request = (HttpWebRequest)WebRequest.Create(url);
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
            obj_user = js.Deserialize<UserModel>(responseFromServer);


            //imgprofile.ImageUrl = userinfo.picture;
            //lblid.Text = userinfo.id;
            //lblgender.Text = userinfo.gender;
            //lbllocale.Text = userinfo.locale;
            //lblname.Text = userinfo.name;
            //hylprofile.NavigateUrl = userinfo.link;

        }


    }
}