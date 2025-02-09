﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class ask_question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     

        protected void submitQuestion_Click(object sender, EventArgs e)
        {
            string question= questionText.Text;

            // Perform required validation here
            if (string.IsNullOrEmpty(question))
            {
                validationError.Text = "Please enter your question.";
                return;
            }


            api.Api.AddQuestion(int.Parse(Session["User"].ToString()),question);

            bool added = true; 
            if(added)
            {
                questionText.Text = "";
                validationError.Text = "";
                Response.Redirect("~/home.aspx");
            }

           
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}