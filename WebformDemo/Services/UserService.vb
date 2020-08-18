Imports System.Data.SqlClient

Public Class UserService
    Implements IUser
    Dim connectionString As String = ConfigurationManager.ConnectionStrings("myConnectionString").ConnectionString
    Public Function GetUser(user As User) As User Implements IUser.GetUser
        Dim data As New User
        Dim con As New SqlConnection(connectionString)
        con.Open()   'Mở kết nối
        'Code truy vấn, cập nhật dữ dữ liệu ở đây
        Dim cmd = New SqlCommand()
        cmd.CommandText = "SELECT *
                            FROM [user] where email=@email and password=@password"
        cmd.CommandType = System.Data.CommandType.Text
        cmd.Connection = con
        cmd.Parameters.AddWithValue("@email", user.Email)
        cmd.Parameters.AddWithValue("@password", user.Password)
        Dim dbReader As SqlDataReader
        dbReader = cmd.ExecuteReader(CommandBehavior.CloseConnection)
        Do While dbReader.Read()
            Dim userObj As New User
            userObj.Email = dbReader("email").ToString
            userObj.Password = dbReader("password").ToString
            data = userObj
        Loop
        con.Close() 'đóng kết nối sau khi sử dụng
        Return data
    End Function
End Class
