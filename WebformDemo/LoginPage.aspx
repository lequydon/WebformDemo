<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginPage.aspx.vb" Inherits="WebformDemo.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 style="text-align:center">Login page</h1>
    <form id="form1" runat="server" style="width:40%;margin:0 auto">
        <div>
            <label>Email:</label>
            <div class="email" style="margin-bottom:20px">
                <asp:TextBox ID="email" runat="server" Width="100%" Height="29px"></asp:TextBox>
            </div>
            <label>Password:</label>
            <div class="password">
                <asp:TextBox ID="password" runat="server" Width="100%" TextMode="Password" Height="27px"></asp:TextBox>
            </div>
        </div>
        <label>Persistent Cookie:</label>
        <div><ASP:CheckBox id="chkPersistCookie" runat="server" autopostback="false" /></div>
        <div style="text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Login" Width="89px" BackColor="#339933" BorderColor="Yellow" BorderStyle="None" ForeColor="Black" Height="25px" />
        </div>
    </form>
</body>
</html>
