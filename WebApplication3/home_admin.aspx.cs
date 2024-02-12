using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class home_admin : System.Web.UI.Page
    {
        //static SqlConnection connection = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"]  == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else if (Session["User"].ToString() != "Admin")
            {
                Response.Redirect("~/home.aspx");
                return;
            }
            var ques = api.Api.GetQuestions();
            questionsRepeater.DataSource = ques;
            questionsRepeater.DataBind();
        }
        protected void loginOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
        protected void GoToAnswer(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/answer_admin.aspx?ques=" + e.CommandArgument);
        }

        protected  void gotouserlist_Click (object sender, EventArgs e)
        {
            Response.Redirect("~/userlist.aspx");
        }

        protected void delete_Click(object sender, CommandEventArgs e)
        {

            api.Api.DeleteQuestion(Convert.ToInt32(e.CommandArgument));
            Response.Redirect("~/home_admin.aspx?ques=" + e.CommandArgument);
            
        }
    }
}