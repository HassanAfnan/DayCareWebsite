<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventsPage.aspx.cs" Inherits="DayCareWebsite.EventsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ChildDayCare</title>
        <link rel = "stylesheet" href = "style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</head>
<body style="background-image:linear-gradient(to right, rgb(232, 55, 219), rgb(113, 113, 255));">
    <form id="form1" runat="server">
        <section id = "nav-bar">                                    <!--bg-light-->
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand" href="AdminHome.html">SuperChildDayCare</a>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <a class="navbar-log" href="AdminRegister.html">Register Admin</a>                
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="AdminHome.html">Home </a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="AddEvents.html">Add Events</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="AddPictures.html">Add Photos</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="AdminComments.html">Review comments</a>
                      </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="AdminUser.html">See All Users</a>
                    </li>                                         
                    <li class="nav-item active">
                        <a class="nav-link" href="AdminFeeAdd.html">Add Fee</a>
                    </li>                                         
                  </ul>                
                </div>                                          
              </nav>
        </section>
    </div>
    <div class="gap"></div>
    <div class="act">
        <h1>ADD EVENTS</h1>
      </div>
    <div class="reg-inp-eve">            
    <!--  <form method="POST" class="Register"> -->
        <label>Name </label><br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Event's Name" style="width: 250px;"></asp:TextBox><br />
        <label>Description about Event </label><br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" placeholder="Description"></asp:TextBox><br />
        <label>Date </label><br />
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" placeholder="Current Date" style="width: 250px;"></asp:TextBox><br />
        <label>Time </label><br />   
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Time" placeholder="Current Date" style="width: 250px;"></asp:TextBox>
        <label>Event's Photo</label><br />
        <asp:Image ID="Image1" runat="server" Height="120px" Width="118px" />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
        <br />
            <asp:Button ID="Button1" runat="server" Text="Upload" Width="100px" onclick="Button1_Click" class="btn btn-secondary btn-lg"/>
&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Add" Width="100px" onclick="Button2_Click" class="btn btn-secondary btn-lg"/>
            <br />
        <!--  </form> --> 
    </div>
        <div class="gap"></div>
        <div style="display:flex; justify-content:center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="Eid" DataSourceID="SqlDataSource1" GridLines="None" Height="325px" Width="1354px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Eid" HeaderText="Eid" InsertVisible="False" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="EPic" HeaderText="EPic" SortExpression="EPic" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dayCareWebsite %>" DeleteCommand="DELETE FROM [Events] WHERE [Eid] = @original_Eid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([EPic] = @original_EPic) OR ([EPic] IS NULL AND @original_EPic IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL))" InsertCommand="INSERT INTO [Events] ([name], [Description], [EPic], [Date], [time]) VALUES (@name, @Description, @EPic, @Date, @time)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Events]" UpdateCommand="UPDATE [Events] SET [name] = @name, [Description] = @Description, [EPic] = @EPic, [Date] = @Date, [time] = @time WHERE [Eid] = @original_Eid AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([EPic] = @original_EPic) OR ([EPic] IS NULL AND @original_EPic IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([time] = @original_time) OR ([time] IS NULL AND @original_time IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Eid" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_EPic" Type="String" />
                <asp:Parameter Name="original_Date" Type="String" />
                <asp:Parameter Name="original_time" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="EPic" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="time" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="EPic" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="original_Eid" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_EPic" Type="String" />
                <asp:Parameter Name="original_Date" Type="String" />
                <asp:Parameter Name="original_time" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
    <div class="gap"></div>
        <div class="footer">
          <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com</p>
        </div>
    </form>
</body>
</html>
