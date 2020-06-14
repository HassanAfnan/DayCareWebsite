<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PicturePage.aspx.cs" Inherits="DayCareWebsite.PicturePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 246px">
    <form id="form1" runat="server">
        <div style="height: 236px">
            Description:<asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            Pic:<br />

            <asp:Image ID="Image1" runat="server" Height="120px" Width="110px" />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Width="240px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click"/>
&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
            <br />

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Pid" DataSourceID="SqlDataSource1" GridLines="None">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="pic" HeaderText="pic" SortExpression="pic" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dayCareWebsite %>" DeleteCommand="DELETE FROM [Picture] WHERE [Pid] = @original_Pid AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL))" InsertCommand="INSERT INTO [Picture] ([Description], [pic]) VALUES (@Description, @pic)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Picture]" UpdateCommand="UPDATE [Picture] SET [Description] = @Description, [pic] = @pic WHERE [Pid] = @original_Pid AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Pid" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_pic" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="pic" Type="String" />
                <asp:Parameter Name="original_Pid" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_pic" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
