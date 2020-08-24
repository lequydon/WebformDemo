Public Class UserManage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Databd()
        End If
    End Sub
    Protected Sub Databd()
        Dim userService As New UserService()
        Dim datatable As New DataTable()
        GridView1.DataSource = userService.GetListUser()
        GridView1.DataBind()
    End Sub
    Protected Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        Databd()
    End Sub

    Protected Sub GridView1_RowEditing(sender As Object, e As GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        Databd()
    End Sub

    Protected Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim row As GridViewRow = GridView1.Rows(e.RowIndex)
        Dim lbldeleteid As Label = row.FindControl("lblID")
        Dim userService As New UserService()
        userService.DeleteUser(Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value.ToString()))
        Databd()
    End Sub

    Protected Sub GridView1_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1
        Databd()
    End Sub

    Protected Sub GridView1_RowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Dim userid = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value.ToString())
        Dim row As GridViewRow = GridView1.Rows(e.RowIndex)
        Dim lblID As Label = row.FindControl("lblID")
        Dim user As New User
        user.Id = userid
        Dim txtEmail As TextBox = row.Cells(1).Controls(0)
        Dim txtRole As TextBox = row.Cells(2).Controls(0)
        Dim txtSdt As TextBox = row.Cells(3).Controls(0)
        Dim txtHoten As TextBox = row.Cells(4).Controls(0)
        Dim txtNamsinh As TextBox = row.Cells(5).Controls(0)
        user.Email = txtEmail.Text
        user.Role = txtRole.Text
        user.Sdt = txtSdt.Text
        user.Hoten = txtHoten.Text
        user.Namsinh = txtNamsinh.Text

        GridView1.EditIndex = -1
        Dim userService As New UserService()
        userService.UpdateUser(user)
        Databd()
    End Sub

    Protected Sub GridView1_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs) Handles GridView1.RowUpdated

    End Sub
End Class