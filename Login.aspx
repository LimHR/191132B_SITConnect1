<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="prac.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Login</h1>
            <p>Email:<asp:TextBox ID="tb_emailhr" runat="server"></asp:TextBox>
            </p>
            <p>Password:<asp:TextBox ID="tb_pwdhr" runat="server" TextMode="Password"></asp:TextBox>
            </p>
        </div>
        <p>
            <asp:Button ID="btn_loginhr" runat="server" Text="Login" OnClick="btn_loginhr_Click" />
            <asp:Button ID="btn_registerhr" runat="server" Text="Register" OnClick="btn_registerhr_Click" />
        </p>
        <p>
            <asp:Label ID="errorMsghr" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
