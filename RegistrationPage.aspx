<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationPage.aspx.cs" Inherits="RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header"> 
     <asp:Button class="heading" ID="headerLabel" runat="server" Text="Game Mania" OnClick="heading_Click"></asp:Button>   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button class="headingLabel" ID="headingLabel" runat="server" Text="Login" Font-Underline="True" OnClick="headingLabel_Click"></asp:Button>
    </div>
         <br />       
    <div class="background">    
        <br />
        <asp:Label class="textbox" ID="nameLabel" runat="server" Text="Name:" BorderStyle="None" ></asp:Label><br />
         <asp:TextBox ID="nameTextBox" runat="server" BorderColor="#FF0066" BorderStyle="Solid" Width="219px"></asp:TextBox>
         <br />
         <asp:Label class="textbox" ID="emailLabel" runat="server" Text="Email id:" BorderStyle="None" ></asp:Label><br />
         <asp:TextBox ID="emailTextBox" runat="server" BorderColor="#FF0066" BorderStyle="Solid" Width="219px"></asp:TextBox>
         <br />
         <asp:Label class="textbox" ID="pwdLabel" runat="server" Text="Password:" BorderStyle="None"></asp:Label>
         <br />
         <asp:TextBox ID="pwdTextBox" TextMode="Password" runat="server" BorderColor="#FF0066" BorderStyle="Solid" Width="219px"></asp:TextBox>
         <br />
        <asp:Label class="textbox" ID="cpwdLabel" runat="server" Text="Confirm password:" BorderStyle="None" ></asp:Label><br />
         <asp:TextBox ID="cpwdTextBox" TextMode="Password" runat="server" BorderColor="#FF0066" BorderStyle="Solid" Width="219px"></asp:TextBox>
        <br />         
        <br />
         <asp:Label class="textbox" ID="errorLabel" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
        <br />
        <br />
         <asp:Button class="button" ID="registerButton" runat="server" Text="Register" BorderStyle="None" OnClick="registerButton_Click" />   
         <br />   
 </div>
       <footer>
           <img src="631.jpg"  />
       </footer>

    </form>
</body>
</html>
