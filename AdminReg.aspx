<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="DayCareWebsite.AdminReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            Email:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            Password:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Register" onclick="Button1_Click"/>
        </div>
    </form>
</body>
</html>
