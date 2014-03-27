
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delrecipe As String = e.Values("recipename").ToString()

        Response.Write("The record")
        Response.Write("<span class=deletedrecipehighlight>")
        Response.Write(delrecipe)
        Response.Write("</span> has been deleted from the database")

        Response.AddHeader("REFRESH", "3;URL=./recipe.aspx")


        'Response.Write("the record has been deleted from the database.")

    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        Response.Redirect("./recipe.aspx")

    End Sub
End Class
