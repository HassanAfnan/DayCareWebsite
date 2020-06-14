<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordRecovery.aspx.cs" Inherits="DayCareWebsite.passwordRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h2>Password Recovery</h2>
            Recover Password<br />
         you will receive an email<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Recover Password" OnClick="Button1_Click"/>
        </div>
    </form>
</body>
</html>
