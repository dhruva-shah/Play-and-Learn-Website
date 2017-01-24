using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Breakout : System.Web.UI.Page
{
    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
    }
    protected void heading_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx?id=true");
    }

    protected void headingLabel_Click(object sender, EventArgs e)
    {
        if (headingLabel.Text == "Login")
        {
            Response.Redirect("LoginPage.aspx?id=true");
        }
        else if (headingLabel.Text == "Logout")
        {
            headingLabel.Text = "Login";
            id = "false";
            Session.Abandon();
            Response.Redirect("HomePage.aspx?id=false");
        }
    }

    protected void replay_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.RawUrl);

    }
}