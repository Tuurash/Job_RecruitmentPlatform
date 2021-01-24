using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using PGI_JobPortal.Models;

namespace PGI_JobPortal.Manager
{
    public class EmailManager
    {




        internal static void SendConfirmationMail(string email, string subject, string mail)
        {


            DataTable dt = CandidateManager.ApplicationEmailExist(email);
            if (dt.Rows.Count > 0)
            {
                string recieverName = dt.Rows[0]["FullName"].ToString();
                string recieverMail = email;
                string MsgBody = mail;
                string MsgSub = subject;

                SendMail(recieverName, recieverMail, MsgBody, MsgSub);

            }
        }

        internal static void SendMail(string recieverName, string recieverMail, string MsgBody, string MsgSub)
        {
            MailMessage msg = new MailMessage();

            //string MailAttatchment = ;

            try
            {
                msg.From = new MailAddress(@"help.primeapps@gmail.com");
                msg.To.Add(recieverMail);
                msg.Body = MsgBody;
                //msg.Attachments.Add(new Attachment(obj_mailcredential.Attatchment, "PI.pdf"));

                msg.IsBodyHtml = true;
                msg.Subject = MsgSub;

                SmtpClient smt = new SmtpClient("smtp.gmail.com");
                smt.Port = 587;
                smt.Credentials = new NetworkCredential(@"help.primeapps@gmail.com", "pLuy67n123VBO3h9op1Tr3");
                smt.EnableSsl = true;
                smt.Send(msg);
            }

            catch (Exception ex)
            {

            }

            finally
            {
                msg.Dispose();
            }
        }


    }
}