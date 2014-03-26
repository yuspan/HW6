<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailView.aspx.vb" Inherits="DetailView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Recipe ID] = @Recipe_ID" InsertCommand="INSERT INTO [Table] ([Recipe Name], [Submitted By], [Ingredient #1], [Ingredient #2], [Ingredient #3], [Ingredient #4], [Ingredient #5], [Preparation], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Recipe Name] = @Recipe_Name, [Submitted By] = @Submitted_By, [Ingredient #1] = @column1, [Ingredient #2] = @column2, [Ingredient #3] = @column3, [Ingredient #4] = @column4, [Ingredient #5] = @column5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Recipe ID] = @Recipe_ID">
            <DeleteParameters>
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Recipe_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Recipe ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="369px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Recipe ID" HeaderText="Recipe ID" InsertVisible="False" ReadOnly="True" SortExpression="Recipe ID" />
                <asp:BoundField DataField="Recipe Name" HeaderText="Recipe Name" SortExpression="Recipe Name" />
                <asp:BoundField DataField="Submitted By" HeaderText="Submitted By" SortExpression="Submitted By" />
                <asp:BoundField DataField="Ingredient #1" HeaderText="Ingredient #1" SortExpression="Ingredient #1" />
                <asp:BoundField DataField="Ingredient #2" HeaderText="Ingredient #2" SortExpression="Ingredient #2" />
                <asp:BoundField DataField="Ingredient #3" HeaderText="Ingredient #3" SortExpression="Ingredient #3" />
                <asp:BoundField DataField="Ingredient #4" HeaderText="Ingredient #4" SortExpression="Ingredient #4" />
                <asp:BoundField DataField="Ingredient #5" HeaderText="Ingredient #5" SortExpression="Ingredient #5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <br />
    
    </div>
    </form>
</body>
</html>
