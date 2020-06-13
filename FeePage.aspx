<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeePage.aspx.cs" Inherits="DayCareWebsite.FeePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br />
            Amount:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Fid" DataSourceID="SqlDataSource1" GridLines="None" Height="242px" style="z-index: 1; left: 418px; top: 140px; position: absolute; height: 242px; width: 346px" Width="346px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Fid" HeaderText="Fid" InsertVisible="False" ReadOnly="True" SortExpression="Fid" />
                    <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                    <asp:BoundField DataField="Ammount" HeaderText="Ammount" SortExpression="Ammount" />
                    <asp:BoundField DataField="DateTimeNow" HeaderText="DateTimeNow" SortExpression="DateTimeNow" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dayCareWebsite %>" DeleteCommand="DELETE FROM [Fee] WHERE [Fid] = @original_Fid AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([Ammount] = @original_Ammount) OR ([Ammount] IS NULL AND @original_Ammount IS NULL)) AND (([DateTimeNow] = @original_DateTimeNow) OR ([DateTimeNow] IS NULL AND @original_DateTimeNow IS NULL))" InsertCommand="INSERT INTO [Fee] ([Uid], [Ammount], [DateTimeNow]) VALUES (@Uid, @Ammount, @DateTimeNow)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Fee]" UpdateCommand="UPDATE [Fee] SET [Uid] = @Uid, [Ammount] = @Ammount, [DateTimeNow] = @DateTimeNow WHERE [Fid] = @original_Fid AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([Ammount] = @original_Ammount) OR ([Ammount] IS NULL AND @original_Ammount IS NULL)) AND (([DateTimeNow] = @original_DateTimeNow) OR ([DateTimeNow] IS NULL AND @original_DateTimeNow IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Fid" Type="Int32" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                    <asp:Parameter Name="original_Ammount" Type="Double" />
                    <asp:Parameter Name="original_DateTimeNow" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Uid" Type="Int32" />
                    <asp:Parameter Name="Ammount" Type="Double" />
                    <asp:Parameter Name="DateTimeNow" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Uid" Type="Int32" />
                    <asp:Parameter Name="Ammount" Type="Double" />
                    <asp:Parameter Name="DateTimeNow" Type="DateTime" />
                    <asp:Parameter Name="original_Fid" Type="Int32" />
                    <asp:Parameter Name="original_Uid" Type="Int32" />
                    <asp:Parameter Name="original_Ammount" Type="Double" />
                    <asp:Parameter Name="original_DateTimeNow" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
