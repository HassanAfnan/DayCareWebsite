<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="DayCareWebsite.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Sign out" onclick="Button1_Click"/>
        </div>
    </form>
</body>
</html>
