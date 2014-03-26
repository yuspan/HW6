<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_recipe %>" DeleteCommand="DELETE FROM [RECIPE] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [RECIPE] ([recipename], [submitted by], [ingredient #1], [ingredient #2], [ingredient #3], [ingredient #4], [ingredient #5], [Preparation], [Note]) VALUES (@recipename, @submitted_by, @column1, @column2, @column3, @column4, @column5, @Preparation, @Note)" SelectCommand="SELECT * FROM [RECIPE] WHERE ([recipeID] = @recipeID)" UpdateCommand="UPDATE [RECIPE] SET [recipename] = @recipename, [submitted by] = @submitted_by, [ingredient #1] = @column1, [ingredient #2] = @column2, [ingredient #3] = @column3, [ingredient #4] = @column4, [ingredient #5] = @column5, [Preparation] = @Preparation, [Note] = @Note WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Height="50px" style="margin-bottom: 0px" Width="608px">
            <Fields>
                <asp:BoundField DataField="recipename" HeaderText="Recipe Name" SortExpression="recipename" />
                <asp:BoundField DataField="submitted by" HeaderText="Submitted By" SortExpression="submitted by" />
                <asp:BoundField DataField="ingredient #1" HeaderText="Ingredient #1" SortExpression="ingredient #1" />
                <asp:BoundField DataField="ingredient #2" HeaderText="Ingredient #2" SortExpression="ingredient #2" />
                <asp:BoundField DataField="ingredient #3" HeaderText="Ingredient #3" SortExpression="ingredient #3" />
                <asp:BoundField DataField="ingredient #4" HeaderText="Ingredient #4" SortExpression="ingredient #4" />
                <asp:BoundField DataField="ingredient #5" HeaderText="Ingredient #5" SortExpression="ingredient #5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
