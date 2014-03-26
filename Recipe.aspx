<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
        <br />
        <a href="Default.aspx">Home</a>
        <br />
      

        <a href="NewRecipe.aspx">Add a new recipe</a>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Width="782px">
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
