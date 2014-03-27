<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Web Contact Form</title>
     <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>

<body>
    <div id="links">
              <ul>
              <li><a href="./Default.aspx">Home</a> </li>&nbsp
                  <li><a href="./Recipe.aspx">View Recipes</a></li>&nbsp
            <li>&nbsp;<a href="./aboutus.aspx">About Us</a></li>&nbsp
              <li>&nbsp;<a href="./contact.aspx">Contact</a></li>
                </ul>

              </div>
    <form id="form1" runat="server">

        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
       
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

 
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        
        <%End If%>

    </form>
© 2014. 6K:183 Software Design & Development</body>
 
</html>
