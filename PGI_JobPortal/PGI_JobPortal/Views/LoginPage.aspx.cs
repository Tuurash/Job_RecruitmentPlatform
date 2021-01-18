using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using PGI_JobPortal.Manager;
using PGI_JobPortal.Models;


namespace PGI_JobPortal.Views
{

    public partial class LoginPage : System.Web.UI.Page
    {
        string clientid = @"624712534406-htkuat9retk65t8qignigsal97cg6brm.apps.googleusercontent.com";
        string clientsecret = @"xeg-PxUNKbVAAWAVNoQT31CP";
        string redirection_url = "http://localhost:58350/Views/UserDashboardPage.aspx";

        string getEmail = "";
        string getPassword = "";
        string getRole = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Value != "" && txtPassword.Value != "")
            {
                getEmail = txtEmail.Value; getPassword = txtPassword.Value;

                DataTable dt = CandidateManager.getCandidate(getEmail, getPassword);

                if (dt.Rows.Count > 0)
                {
                    Session["userEmail"] = getEmail;
                    Session["Name"] = dt.Rows[0]["UserFirstName"].ToString() + " " + dt.Rows[0]["UserLastName"].ToString();
                    Session["UserPhoneNo"] = dt.Rows[0]["UserPhoneNo"].ToString();
                    Session["UserProfileImage"] = dt.Rows[0]["UserPhoto"].ToString();
                    Session["UserCode"] = dt.Rows[0]["UserCode"].ToString();

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
                else
                {
                    //Something Wrong}
                }
            }
        }

        protected void gLogin_Click(object sender, ImageClickEventArgs e)
        {
            string uri = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(uri);
        }


    }
}