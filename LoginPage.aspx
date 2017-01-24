<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Login</title>
</head>
<body>
   <form id="form1" runat="server">
   <div class="header"> 
          <asp:Button class="heading" ID="headerLabel" runat="server" Text="Game Mania" OnClick="heading_Click"></asp:Button>     
 </div>
       <br />       
 <div class="background">    
         <br />
         <asp:Label class="textbox" ID="emailLabel" runat="server" Text="Email id:" BorderStyle="None" ></asp:Label>
         <br />
         <asp:TextBox ID="emailTextBox" runat="server" BorderColor="Black" BorderStyle="Solid" Width="219px"></asp:TextBox>
         <br />
         <br />
         <asp:Label class="textbox" ID="pwdLabel" runat="server" Text="Password:" BorderStyle="None"></asp:Label>
         <br />
         <asp:TextBox ID="pwdTextBox" TextMode="Password" runat="server" BorderColor="Black" BorderStyle="Solid" Width="219px"></asp:TextBox>
         <br />
         <br />
         <br />
         <asp:Button class="button" ID="loginButton" runat="server" Text="Login" BorderStyle="None" OnClick="loginButton_Click" />
         <br />
         <asp:Label class="textbox" ID="errorLabel" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
         <br />
         <br />
         <asp:Button class="textbox" ID="newuserButton" runat="server" Text="New user? Register here" BackColor="White" BorderStyle="None" Font-Underline="True" Width="212px" OnClick="newuserButton_Click" />
         <br />
   
 </div>
       <footer>
           <img src="631.jpg"  />
       </footer>
    </form>
</body>
</html>
