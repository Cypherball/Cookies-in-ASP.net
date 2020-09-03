using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Experiment8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            feedbackLabelTitle.Visible = false;
            feedbackLabel.Visible = false;

            if (Request.Cookies["username"] != null)
            {
                showCookies();
            }
            else
            {
                cookiesLabel.Text = "No cookies set";
            }
        }

        protected void submit_form_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                feedbackLabelTitle.Visible = true;
                feedbackLabel.Text = "Form is valid!";
                feedbackLabel.Visible = true;

                DateTime Expiry = DateTime.Now.AddSeconds(30);

                Response.Cookies["username"].Value = username.Text.ToString();
                Response.Cookies["username"].Expires = Expiry;
                Response.Cookies["user_email"].Value = user_email.Text.ToString();
                Response.Cookies["user_email"].Expires = Expiry;
                Response.Cookies["dp_name"].Value = dp_name.Text.ToString();
                Response.Cookies["dp_name"].Expires = Expiry;
                Response.Cookies["nickname"].Value = nickname.Text.ToString();
                Response.Cookies["nickname"].Expires = Expiry;
                Response.Cookies["fname"].Value = fname.Text.ToString();
                Response.Cookies["fname"].Expires = Expiry;
                Response.Cookies["lname"].Value = lname.Text.ToString();
                Response.Cookies["lname"].Expires = Expiry;
                Response.Cookies["website"].Value = website.Text.ToString();
                Response.Cookies["website"].Expires = Expiry;
                Response.Cookies["bio"].Value = bio.Text.ToString();
                Response.Cookies["bio"].Expires = Expiry;
                Response.Cookies["twitter"].Value = twitter.Text.ToString();
                Response.Cookies["twitter"].Expires = Expiry;

                showCookies();
            }
            else
            {
                feedbackLabelTitle.Visible = true;
                feedbackLabel.Text = "Form is invalid!";
                feedbackLabel.Visible = true;
            }
        }

        private void showCookies() {
            cookiesLabel.Text = "Username: " + Request.Cookies["username"].Value +
                   "<br>Email: " + Request.Cookies["user_email"].Value +
                   "<br>Display Name: " + Request.Cookies["dp_name"].Value +
                   "<br>Nick Name: " + Request.Cookies["nickname"].Value +
                   "<br>Full Name: " + Request.Cookies["fname"].Value +
                   " " + Request.Cookies["lname"].Value +
                   "<br>Website: " + Request.Cookies["website"].Value +
                   "<br>Bio: " + Request.Cookies["bio"].Value +
                   "<br>Twitter ID: @" + Request.Cookies["twitter"].Value;

            username.Text = Request.Cookies["username"].Value;
            user_email.Text = Request.Cookies["user_email"].Value;
            dp_name.Text = Request.Cookies["dp_name"].Value;
            nickname.Text = Request.Cookies["nickname"].Value;
            fname.Text = Request.Cookies["fname"].Value;
            lname.Text = Request.Cookies["lname"].Value;
            website.Text = Request.Cookies["website"].Value;
            bio.Text = Request.Cookies["bio"].Value;
            twitter.Text = Request.Cookies["twitter"].Value;
        }
    }
}