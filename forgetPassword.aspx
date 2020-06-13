<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetPassword.aspx.cs" Inherits="DayCareWebsite.forgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Forget Password</h2>
            Enter your email<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
