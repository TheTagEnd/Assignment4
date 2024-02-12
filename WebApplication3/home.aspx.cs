using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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
            var ques = api.Api.GetQuestions();
            questionsRepeater.DataSource = ques;
            questionsRepeater.DataBind();
        }
        protected void loginOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
        protected void GotoAnswer(object sender, CommandEventArgs e)
        {
            Response.Redirect("~/answer.aspx?ques=" + e.CommandArgument);
        }
        
        protected void LikeQuestion(Object sender, CommandEventArgs e) {
            var btn = sender as LinkButton;
            var countEl = btn.FindControl("likeCount") as HtmlGenericControl;
            countEl.InnerText = (int.Parse(countEl.InnerText) + 1).ToString();
            var id = int.Parse(e.CommandArgument.ToString());
            api.Api.IncrementQuesLikes(id);
        }

        protected void DislikeQuestion(object sender, CommandEventArgs e)
        {
            var btn = sender as LinkButton;
            var countEl = btn.FindControl("dislikeCount") as HtmlGenericControl;
            countEl.InnerText = (int.Parse(countEl.InnerText) + 1).ToString();
            var id = int.Parse(e.CommandArgument.ToString());
            api.Api.IncrementQuesDislikes(id);
        }
        protected void askquestion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ask_question.aspx");
        }


    }

}