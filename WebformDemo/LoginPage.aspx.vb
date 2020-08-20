Public Class LoginPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim userObj As New User
        userObj.Email = email.Text
        userObj.Password = password.Text
        Dim checkLogin As New UserService
        If checkLogin.GetUser(userObj).Email IsNot Nothing Then
            Dim tkt As New FormsAuthenticationTicket(1, email.Text, DateTime.Now, DateTime.Now.AddMinutes(30), chkPersistCookie.Checked, checkLogin.GetUser(userObj).Role)
            Dim cookiestr As String
            Dim ck As HttpCookie
            cookiestr = FormsAuthentication.Encrypt(tkt)
            ck = New HttpCookie(FormsAuthentication.FormsCookieName, cookiestr)
            If chkPersistCookie.Checked Then
                ck.Expires = tkt.Expiration
            End If
            ck.Path = FormsAuthentication.FormsCookiePath
            Response.Cookies.Add(ck)
            Dim redirectPage = Request("ReturnUrl")
            If redirectPage Is Nothing Then
                redirectPage = "Default.aspx"
            End If
            Response.Redirect(redirectPage)
        End If
    End Sub
End Class