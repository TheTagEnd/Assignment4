using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class answer_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/Default.aspx");
            }
            else if (Session["User"].ToString() != "Admin")
            {
                Response.Redirect("~/home.aspx");
                return;
            }
            //var ans = api.Api.GetAnswers();
            //answerRepeater.DataSource = ques;// not made yet
            //answerRepeater.DataBind();
        }

        protected void deleteAnswer_Click(object sender, CommandEventArgs e)
        {

            api.Api.DeleteAnswer(Convert.ToInt32(e.CommandArgument));
            Response.Redirect("~/home_admin.aspx?ques=" + e.CommandArgument);

        }

    }
}