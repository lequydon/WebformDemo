Public Class UserManage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim userService As New UserService()
        Dim datatable As New DataTable()
        GridView1.DataSource = userService.GetListUser()
        GridView1.DataBind()
    End Sub

End Class