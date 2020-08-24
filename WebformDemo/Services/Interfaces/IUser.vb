Public Interface IUser
    Function GetUser(ByVal user As User) As User
    Function GetListUser() As List(Of User)
    Function DeleteUser(id As String) As Boolean
    Function UpdateUser(user As User) As User
End Interface
