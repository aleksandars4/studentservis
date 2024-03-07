using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace test1
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            try
            {
                var from = "savicaleksandar318@gmail.com";
                var to = "savicaleksandar318@gmail.com";
                const string Password = "ilap agod xnfy ekka";
                string mail_subject = txt_subject.Text.ToString();
                string mail_message = "From: " + txt_name + "\n";
                mail_message += "Email: " + txt_email.Text + "\n";
                mail_message += "Phone: " + txt_phone.Text + "\n";
                mail_message += "Subject: " + txt_subject.Text + "\n";
                mail_message += "Message: " + txt_message.Text + "\n";

                var smtp = new SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(from, Password);
                    smtp.Timeout = 20000;
                }

                smtp.Send(from, to, mail_subject, mail_message);

                confirm.Text = "Thank you for your email!";

                txt_name.Text = "";
                txt_email.Text = "";
                txt_phone.Text = "";
                txt_subject.Text = "";
                txt_message.Text = "";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

                confirm.Text = "Something went wrong! Please try again";
                confirm.ForeColor = Color.Red;
            }
        }
        private void Confirm()
        {
            string ToEmail = txt_email.Text.Trim();
            string UserName = txt_name.Text;
            string subject2 = txt_subject.Text;

            MailMessage mailMessage = new MailMessage("//", ToEmail);

            StringBuilder sbEmailBody = new StringBuilder();
            sbEmailBody.Append("Dear" + UserName);
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("Thank you for your email");
            sbEmailBody.Append("<br/><br/>");
            sbEmailBody.Append("We received your email regarding" + subject2 + "<br/>");
            sbEmailBody.Append("<br/><br/><br/>");
            sbEmailBody.Append("Sincerely, ");
            sbEmailBody.Append("Web Developer Code");

            mailMessage.IsBodyHtml = true;

            mailMessage.Body = sbEmailBody.ToString();
            mailMessage.Subject = "Re: Thank you for your email";
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "savicaleksandar318@gmail.com",
                Password = "ilap agod xnfy ekka",
            };
            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }

        protected void btn_Pocetna_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentServis.aspx");
        }
    }
}