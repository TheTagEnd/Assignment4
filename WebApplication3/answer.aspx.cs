using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class answer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int quesId = int.Parse(Request.Params.Get("ques") ?? "-1");
           
            var ques = api.Api.GetQuestionById(quesId);
            question.Text = ques.Content;
            
            var ans = api.Api.GetAnswers(quesId);
            answersRepeater.DataSource = ans;
            answersRepeater.DataBind();

           
        }
        protected void SubmitAnswer(object sender, EventArgs e) {
            int quesId = int.Parse(Request.Params.Get("ques") ?? "-1");
            api.Api.AddAnswer(int.Parse(Session["User"].ToString()), answerContent.Text.Trim(), quesId);
            Response.RedirectPermanent(Request.Url.ToString());
        }
        protected void LikeAnswer(object sender, CommandEventArgs e) {
            var btn = sender as LinkButton;
            var countEl = btn.FindControl("likeCount") as HtmlGenericControl;
            countEl.InnerText = (int.Parse(countEl.InnerText) + 1).ToString();
            api.Api.IncrementAnsLikes(int.Parse(e.CommandArgument.ToString()));
        }
        protected void DislikeAnswer(object sender, CommandEventArgs e) {
            var btn = sender as LinkButton;
            var countEl = btn.FindControl("dislikeCount") as HtmlGenericControl;
            countEl.InnerText = (int.Parse(countEl.InnerText) + 1).ToString();
            api.Api.IncrementAnsDislikes(int.Parse(e.CommandArgument.ToString()));
        }
    }
}