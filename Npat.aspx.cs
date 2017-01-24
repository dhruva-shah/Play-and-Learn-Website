using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Npat : System.Web.UI.Page
{
    static string alpha;
    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
    }
    

    public char generate()
    {
        Random random = new Random();
        int num = random.Next(0, 26);
        char let = (char)('a' + num);
        return let;
    }
    protected void startButton_Click(object sender, EventArgs e)
    {
        char alphabet = generate();
        AlphabetLabel.Text = "Your alphabet is " + Char.ToUpper(alphabet);
        alpha = AlphabetLabel.Text.Substring(17,1);
        errorLabel.Visible = false;
        startButton.Visible = false;
        doneButton.Visible = true;
        nameTextBox.Text = "";
        nameTextBox.Enabled = true;
        placeTextBox.Text = "";
        placeTextBox.Enabled = true;
        animalTextBox.Text = "";
        animalTextBox.Enabled = true;
        thingTextBox.Text = "";
        thingTextBox.Enabled = true;
    }

    protected void doneButton_Click(object sender, EventArgs e)
    {
        if (nameTextBox.Text == null || nameTextBox.Text == "" || placeTextBox.Text == null || placeTextBox.Text == "" || animalTextBox.Text == null || animalTextBox.Text == "" || thingTextBox.Text == null || thingTextBox.Text == "")
        {
            errorLabel.Text = "Enter all values!";
            errorLabel.Visible = true;
        }
        else
        {
            string name = nameTextBox.Text.Substring(0,1);
            string place = placeTextBox.Text.Substring(0, 1);
            string animal = animalTextBox.Text.Substring(0, 1);
            string thing = thingTextBox.Text.Substring(0, 1);
            string letter = alpha;
            string lettr = alpha.ToLower();
            if ((name == letter||name == lettr) && (place == letter || place == lettr) && (animal == letter || animal == lettr) && (thing == letter || thing == lettr))
            {
                startButton.Visible = true;
                doneButton.Visible = false;
                errorLabel.Text = "Well done!";
                errorLabel.Visible = true;
            }
            else
            {
                errorLabel.Text = "Oops! Make sure all your entries start from the given alphabet.";
                errorLabel.Visible = true;
            }            
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
        else if (headingLabel.Text == "Logout")
        {
            headingLabel.Text = "Login";
            id = "false";
            Session.Abandon();
            Response.Redirect("HomePage.aspx?id=false");
        }
    }
}