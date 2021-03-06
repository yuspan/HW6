﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>
<body>
     <h1>Yusha&#39;s Recipes</h1>
    <form id="form1" runat="server">
        <div id="links">
              <ul>
              <li><a href="./Default.aspx">Home</a></li>&nbsp
                  <li>&nbsp;<a href="./NewRecipe.aspx">New Recipe</a></li>&nbsp
            <li>&nbsp;<a href="./aboutus.aspx">About Us</a></li>&nbsp
              <li>&nbsp;<a href="./contact.aspx">Contact</a></li>
                </ul>

              </div>
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_recipe %>" DeleteCommand="DELETE FROM [RECIPE] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [RECIPE] ([recipename], [submitted by], [ingredient #1], [ingredient #2], [ingredient #3], [ingredient #4], [ingredient #5], [Preparation], [Note]) VALUES (@recipename, @submitted_by, @column1, @column2, @column3, @column4, @column5, @Preparation, @Note)" SelectCommand="SELECT * FROM [RECIPE]" UpdateCommand="UPDATE [RECIPE] SET [recipename] = @recipename, [submitted by] = @submitted_by, [ingredient #1] = @column1, [ingredient #2] = @column2, [ingredient #3] = @column3, [ingredient #4] = @column4, [ingredient #5] = @column5, [Preparation] = @Preparation, [Note] = @Note WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipename" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipename" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" cssclass="cssgridview" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Width="782px">
          <AlternatingRowStyle CssClass="alt" />
              <Columns>
                <asp:BoundField DataField="recipename" HeaderText="Recipe Name" SortExpression="recipename" />
                <asp:BoundField DataField="submitted by" HeaderText="Submitted By" SortExpression="submitted by" />
              
                <asp:HyperLinkField DataNavigateUrlFields="recipeID" DataNavigateUrlFormatString="recipedetails.aspx?recipeID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>

    </div>
    </form>
</body>
</html>
