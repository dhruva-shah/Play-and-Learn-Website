<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Npat.aspx.cs" Inherits="Npat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <title>Name Place Animal Thing</title>
</head>
<body>
     <form id="form1" runat="server">
        <div class="header">
     <asp:Button class="heading" ID="headerLabel" runat="server" Text="Game Mania" OnClick="heading_Click"></asp:Button>   
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
      <asp:Button class="headingLabel" ID="headingLabel" runat="server" Text="Logout" Font-Underline="True" OnClick="headingLabel_Click"></asp:Button></div>
    <div>
        <br /> 
        <div class="home">    
         <br />
            <asp:Label class="gametitle" ID="NpatLabel" runat="server" Text="Name Place Animal Thing" BorderStyle="None" ></asp:Label>
            <br />
            <asp:Label class="infolabel" ID="infoLabel" runat="server" Text="This is a learning game and we expect you not to cheat. Don't know an answer? Look it up so you learn!" BorderStyle="None" ></asp:Label>
            <br />           
            <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label class="textbox" ID="AlphabetLabel" runat="server" Text="Your alphabet is" BorderStyle="None" ></asp:Label>
            <br />
            <br />
            <asp:Label class="textbox" ID="nameLabel" runat="server" Text="Enter name:" BorderStyle="None" ForeColor="#990099" ></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="nameTextBox" runat="server" BorderColor="Black" BorderStyle="Solid" style="margin-left: 0px" Width="232px" Enabled="false"></asp:TextBox>
         <br />
            <asp:Label class="textbox" ID="placeLabel" runat="server" Text="Enter place:" BorderStyle="None" ForeColor="#990099" ></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="placeTextBox" runat="server" BorderColor="Black" BorderStyle="Solid" Width="233px" Enabled="false"></asp:TextBox>
         <br />
            <asp:Label class="textbox" ID="animalLabel" runat="server" Text="Enter animal:" BorderStyle="None" ForeColor="#990099" ></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="animalTextBox" runat="server" BorderColor="Black" BorderStyle="Solid" Width="234px" Enabled="false"></asp:TextBox>
         <br />
            <asp:Label class="textbox" ID="thingLabel" runat="server" Text="Enter thing:" BorderStyle="None" ForeColor="#990099" ></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="thingTextBox" runat="server" BorderColor="Black" BorderStyle="Solid" Width="235px" Enabled="false"></asp:TextBox>
         <br />
            <asp:Button class="button" ID="startButton" runat="server" Text="Start" BorderStyle="None" OnClick="startButton_Click"/>
            <asp:Button class="button" ID="doneButton" runat="server" Text="Done" BorderStyle="None" OnClick="doneButton_Click" Visible="False"/>
         <br />
         <br />
         <asp:Label class="textbox" ID="errorLabel" runat="server" Text="Label" BorderStyle="None" Visible="False"></asp:Label>
         <br />
    </div>
         <footer>
           &nbsp;<img src="Sampark.png"  /></footer>
    </div>
    </form>
</body>
</html>
