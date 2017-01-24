using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationPage : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void registerButton_Click(object sender, EventArgs e)
    {
        if (nameTextBox.Text != "" && nameTextBox.Text != null && emailTextBox.Text != "" && emailTextBox.Text != null && pwdTextBox.Text != "" && pwdTextBox.Text != null && cpwdTextBox.Text != "" && cpwdTextBox.Text != null)
        {
            if (pwdTextBox.Text.Equals(cpwdTextBox.Text))
            {
                int userId = 0;
                using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\USERS\SHAHD\ONEDRIVE\DOCUMENTS\VISUAL STUDIO 2015\WEBSITES\WEBFINAL\APP_DATA\USERDATABASE.MDF;Integrated Security=True"))
                {
                    using (SqlCommand cmd = new SqlCommand("[dbo].[Registration]"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@uname", nameTextBox.Text.Trim());
                            cmd.Parameters.AddWithValue("@email", emailTextBox.Text.Trim());
                            cmd.Parameters.AddWithValue("@pwd", pwdTextBox.Text.Trim());
                            cmd.Parameters.AddWithValue("@cpwd", cpwdTextBox.Text.Trim());
                            cmd.Connection = con;
                            con.Open();
                            userId = Convert.ToInt32(cmd.ExecuteScalar());
                            con.Close();
                        }
                    }
                    switch (userId)
                    {
                        case -1:
                            errorLabel.Text = "Email id already exists";
                            errorLabel.Visible = true;
                            break;
                        default:
                            errorLabel.Text = "Registration successful";
                            errorLabel.Visible = true;
                            break;
                    }
                }
            }
            else
            {
                errorLabel.Text = "Passwords do not match";
                errorLabel.Visible = true;
            }
        }
        else
        {
            errorLabel.Text = "Incorrect username or password";
            errorLabel.Visible = true;
        }
    }
    protected void heading_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx?id=true");
    }

    protected void headingLabel_Click(object sender, EventArgs e)
    {
      
            Response.Redirect("LoginPage.aspx?id=true");
        
    }
}