using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class userlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var users = api.Api.GetUsers();
            usersRepeater.DataSource = users;
            usersRepeater.DataBind();
        }

        protected void DeleteUser(object sender, CommandEventArgs e) {
            api.Api.DeleteUser(int.Parse(e.CommandArgument.ToString()));
            Response.Redirect(Request.Url.ToString());
        }
    }
}