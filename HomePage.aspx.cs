using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePAge : System.Web.UI.Page
{
    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
        if (id == "true")
        {
            infoLabel.Visible = false;
            headingLabel.Text = "Logout";
            PigLatinLabel.Enabled = true;
            NpatLAbel.Enabled = true;
            BreakoutLabel.Enabled = true;
        }
        else
        {
            headingLabel.Text = "Login";
            PigLatinLabel.Enabled = false;
            NpatLAbel.Enabled = false;
            BreakoutLabel.Enabled = false;
            infoLabel.Visible = true;
        }
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
        else if(headingLabel.Text=="Logout")
        {            
            headingLabel.Text = "Login";
            id = "false";
            Session.Abandon();
            Response.Redirect("HomePage.aspx?id=false");
        }
    }

    protected void piglatin_Click(object sender, EventArgs e)
    {
        if (headingLabel.Text == "Login") {
            Response.Redirect("LoginPage.aspx");
        }
        else
        {
            Response.Redirect("PigLatin.aspx");
        }
    }

    protected void npat_Click(object sender, EventArgs e)
    {
        if (headingLabel.Text == "Login")
        {
            Response.Redirect("LoginPage.aspx");
        }
        else
        {
            Response.Redirect("Npat.aspx");
        }
    }

    protected void breakout_Click(object sender, EventArgs e)
    {
        if (headingLabel.Text == "Login")
        {
            Response.Redirect("LoginPage.aspx");
        }
        else
        {
            Response.Redirect("Breakout.aspx");
        }       
    }
}