using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginButton_Click(object sender, EventArgs e)
    {
        string id = emailTextBox.Text;
        string password = pwdTextBox.Text;

        if (id.Equals("") || id.Equals(null) || password.Equals("") || password.Equals(null))
        {
            errorLabel.Text = "Please complete all fields";
            errorLabel.Visible = true;
        }
        else
        {
            errorLabel.Visible = false;
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\USERS\SHAHD\ONEDRIVE\DOCUMENTS\VISUAL STUDIO 2015\WEBSITES\WEBFINAL\APP_DATA\USERDATABASE.MDF;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from UserTable where email=@id and pwd=@password", con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@password", password);
            try
            {
                con.Open();
            }catch(Exception)
            {
                errorLabel.Text = "Error occured. Retry after sometime";
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                Session["id"] = id;
                id = Convert.ToString(true);
                Response.Redirect("HomePage.aspx?id=true");
            }
            else
            {
                errorLabel.Text = "Incorrect username or password";
                errorLabel.Visible = true;

            }
        }
    }

    protected void newuserButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistrationPage.aspx");
    }
    protected void heading_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx?id=true");
    }
}