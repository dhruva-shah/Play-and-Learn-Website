<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PigLatin.aspx.cs" Inherits="PigLatin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>PigLatin</title>
</head>
<body>
   <form id="form1" runat="server">
   <div class="header">
     <asp:Button class="heading" ID="headerLabel" runat="server" Text="Game Mania" OnClick="heading_Click"></asp:Button>   
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
      <asp:Button class="headingLabel" ID="headingLabel" runat="server" Text="Logout" Font-Underline="True" OnClick="headingLabel_Click"></asp:Button>
    </div>
         <br /> 
        <div class="home">    
         <br />
            <asp:Label class="gametitle" ID="PigLatinLabel" runat="server" Text="Pig Latin" BorderStyle="None" ></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label class="textbox" ID="enterLabel" runat="server" Text="Enter word:" BorderStyle="None" ForeColor="#990099" ></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="enterTextBox" runat="server" BorderColor="Black" BorderStyle="Solid" Width="219px"></asp:TextBox>
         <br />
         <asp:Label class="textbox" ID="plLabel" runat="server" Text="Enter it's Pig Latin:" BorderStyle="None" ForeColor="#990099"></asp:Label>
         <asp:TextBox ID="plTextBox" runat="server" BorderColor="Black" BorderStyle="Solid" Width="219px"></asp:TextBox>
         <br />
         <asp:Button class="button" ID="checkButton" runat="server" Text="Check" BorderStyle="None" OnClick="checkButton_Click" />
         <br />
         <br />
         <asp:Label class="textbox" ID="errorLabel" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
         <br />
        </div>
        <footer>
           &nbsp;<img src="Sampark.png"  /></footer>
    </form>
</body>
</html>
