<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginPage.aspx.vb" Inherits="WebformDemo.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:darkgray">
    <div class="login_content" style="position:absolute;left:50%;top:40%;transform: translateX(-50%) translateY(-50%);width:50%;padding:20px;border-radius:5px;background-color:white">
        <h1 style="text-align: center">Login</h1>
        <form id="form1" runat="server" style="width: 40%; margin: 0 auto">
            <div>
                <div class="email" style="margin-bottom: 20px">
                    <asp:TextBox ID="email" runat="server" Width="100%" Height="29px" placeholder="Email"></asp:TextBox>
                </div>
                <div class="password">
                    <asp:TextBox ID="password" runat="server" Width="100%" TextMode="Password" placeholder="Password" Height="27px"></asp:TextBox>
                </div>
            </div>
           <asp:CheckBox ID="chkPersistCookie" runat="server" AutoPostBack="false" />
            <label>Persistent Cookie</label>
            <div style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="89px" BackColor="#333333" BorderColor="Yellow" BorderStyle="None" ForeColor="White" Height="25px" />
            </div>
        </form>
    </div>
</body>
</html>
