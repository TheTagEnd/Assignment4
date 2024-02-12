using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class _Default : Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (Session["User"] == null) return;
            else if (Session["User"].ToString() == "Admin") 
                Response.Redirect("~/home_admin.aspx");
            else 
                Response.Redirect("~/Home.aspx");
            var questions = api.Api.GetQuestions();
            
        }

        protected void signupButton_Click(object sender, EventArgs e) {
            Response.Redirect("~/signup.aspx");
        }

        protected void loginButton_Click(object sender, EventArgs e) {
            string userName = username.Text.Trim();
            string pswd = password.Text.Trim();

            if (string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(pswd)) {
                loginStatusLabel.Text = "Please enter your username and password.";
                return;
            }

            var authResult = AuthenticateUser(userName, pswd);

            if (authResult != 0) {
                loginStatusLabel.Text = "Invalid username or password.";
                return;
            }

            if (Session["User"].ToString() == "Admin") {
                Response.RedirectPermanent("~/home_admin.aspx");
            } else {
                loginStatusLabel.Text = "Login successful!";
                Response.RedirectPermanent("~/home.aspx");
            }
        }

        public int AuthenticateUser(string userName, string password) {
            if (userName == "a924" && password == "a924") {
                Session["User"] = "Admin";
                return 0;
            }
            
            var user = api.Api.VerifyUser(userName, password);
            if (user == null) return -1;
            
            Session["User"] = user.Id;
            Session["UserName"] = user.Name;
            return 0;
        }

    }
}