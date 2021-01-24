using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace PGI_JobPortal.Manager
{
    public class SMSManager
    {
        string recieverName = "";
        string rcvrNumber = "";
        string MsgBody = "";
        internal void SendOTP(string getPhoneNo)
        {
            Random generator = new Random();
            String r = generator.Next(0, 1000000).ToString("D6");

            int updateOTP = CandidateManager.UpdateOTPByPhoneNumber(getPhoneNo, r);
            if (updateOTP > 0)
            {
                rcvrNumber = getPhoneNo;
                MsgBody = "Your career@Prime login OTP is" + r;
                SendSMS(rcvrNumber, MsgBody);
            }
            else { SendOTP(getPhoneNo); }

        }

        internal void SendToUser(int iD, string textBody)
        {
            DataTable dt = CandidateManager.ApplicationPhoneNoExistByID(iD);
            if (dt.Rows.Count > 0)
            {
                recieverName = dt.Rows[0]["FullName"].ToString();
                rcvrNumber = dt.Rows[0]["PhoneNumber"].ToString();
                MsgBody = textBody;

                SendSMS(recieverName, MsgBody);

            }
        }

        private static void SendSMS(string rcvrNumber, string msg)
        {

            string result = "";
            WebRequest request = null;
            HttpWebResponse response = null;

            try
            {
                String to = rcvrNumber;
                String username = "Turab12";
                String hash_token = "15cf9bcb740102eeb63b7d82dda2b4b6";
                String message = System.Uri.EscapeUriString(msg); //do not use single quotation   (') in the message to avoid forbidden result
                String url = "http://alphasms.biz/index.php?app=ws&op=pv&u=" + username + "&h=" + hash_token + "&to=" + to + "&msg=" + message;
                request = WebRequest.Create(url);


                response = (HttpWebResponse)request.GetResponse();
                Stream stream = response.GetResponseStream();
                Encoding ec = System.Text.Encoding.GetEncoding("utf-8");
                StreamReader reader = new
                System.IO.StreamReader(stream, ec);
                result = reader.ReadToEnd();
                Console.WriteLine(result);
                reader.Close();
                stream.Close();
            }
            catch (Exception exp)
            {

            }
            finally
            {
                if (response != null)
                    response.Close();
            }
        }


    }
}