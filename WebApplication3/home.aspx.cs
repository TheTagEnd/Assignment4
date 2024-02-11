using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/Default.aspx");
                return;
            }
            else if (Session["User"].ToString() == "Admin")
            {
                Response.Redirect("~/home_admin.aspx");
                return;
            }

            Username.Text = Session["UserName"].ToString();
        }
        protected void loginOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
        protected void gotoanswer(object sender, EventArgs e)
        {
            Response.Redirect("~/answer.aspx");
        }

        protected void likeQuestion(object sender, EventArgs e)
        {
            // Update like count in server-side data store or logic here
            // Display updated like count to user using appropriate methods
        }

        protected void dislikeQuestion(object sender, EventArgs e)
        {
            // Update dislike count in server-side data store or logic here
            // Display updated dislike count to user using appropriate methods
        }

    }

}