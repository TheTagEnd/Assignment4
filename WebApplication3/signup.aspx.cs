using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class signup : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void signupButton_Click(object sender, EventArgs e) {
            string userName = username.Text.Trim();
            string pswd = password.Text.Trim();


            if (string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(pswd)) {
                SignupStatusLabel.Text = "Please enter your username and password.";
                return;
            }

            int err = api.Api.SignUp(userName, pswd);
            if (err == 0) {
                Response.Redirect("~/Default.aspx");
                return;
            }

            if(err == -1) {
                SignupStatusLabel.Text = "User Already Exists";
            }
        }
        protected void loginButton_Click(object sender, EventArgs e) {
            Response.Redirect("~/Default.aspx");
        }
    }
}