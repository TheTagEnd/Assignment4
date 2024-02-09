using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)


        {

            if (Session["User"] == "Admin")
            {
                Response.Redirect("~/home_admin.aspx");
            }
            if (Session["User"] != null)
            {
                Response.Redirect("~/home.aspx");
            }

        }

        protected void signupButton_Click(object sender, EventArgs e)
        {
           Response.Redirect("~/signup.aspx");
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string userName = username.Text.Trim();
            string pswd = password.Text.Trim();


            if (string.IsNullOrEmpty(userName) || string.IsNullOrEmpty(pswd))
            {
                loginStatusLabel.Text = "Please enter your username and password.";
                return;
            }
               bool authResult = AuthenticateUser(userName, pswd);
           
                if (authResult)
                {
                    if (Session["User"] == "Admin")
                    {
                        Response.Redirect("~/home_admin.aspx");

                    }
                    else
                    {
                        loginStatusLabel.Text = "Login successful!";
                        Response.Redirect("~/home.aspx");

                    }
                    // Login successful
                    // Redirect to protected page if applicable
                }
                else
                {
                    // Login failed
                    loginStatusLabel.Text = "Invalid username or password.";
                }

            
        
           
        }

        public bool AuthenticateUser(string userName, string password)
        {

            if(userName == "a924" && password == "a924")
            {
                Session["User"] = "Admin";
            }
            else
            {
            Session["User"] = "Shivansh";
            }
            return true;

            //Session.Abandon();
        }

      
    }
}