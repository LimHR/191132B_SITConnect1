<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="prac.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Welcome</p>
        <asp:Button ID="btn_logout" runat="server" Text="Logout" OnClick="LogoutMe"/>
        <p>
            <asp:Label ID="lblmessage" runat="server" EnableViewState="false"></asp:Label>
        </p>
    </form>
</body>
</html>
