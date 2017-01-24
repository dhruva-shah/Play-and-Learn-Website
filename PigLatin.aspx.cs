using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PigLatin : System.Web.UI.Page
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

    protected void checkButton_Click(object sender, EventArgs e)
    {
        string word = enterTextBox.Text;
        string pl = plTextBox.Text;

        if (word.Equals("") || word.Equals(null) || pl.Equals("") || pl.Equals(null))
        {
            errorLabel.Text = "Please complete all fields";
            errorLabel.Visible = true;
        }
        else if (word.TrimEnd().Contains(" "))
        {
            errorLabel.Text = "Please enter a single word.";
        }
        else
        {
            string first = word.Substring(0, 1);
            string middle = word.Substring(word.Length - (word.Length - 1));
            string last = "ay";
            string piglatin = middle.ToString() + first + last;

            if (plTextBox.Text == piglatin)
            {
                errorLabel.Text = "Excellent! You are right.";
                errorLabel.Visible = true;
            }
            else
            {
                errorLabel.Text = "Please try again." + Environment.NewLine + "Hint: Word: banana" + "/n" + "Pig Latin: ananabay(anana-b-ay)";
                errorLabel.Visible = true;
            }
        }
    }
}