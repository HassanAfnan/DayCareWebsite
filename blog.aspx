<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="DayCareWebsite.blog" %>

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
     <section id = "nav-bar">                                    <!--bg-light-->
            <nav class="navbar navbar-expand-lg navbar-light ">
                <a class="navbar-brand" href="index.html">SuperChildDayCare</a>                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <a class="navbar-log" href="Login.html">Login/Register</a>                
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="index.html">Home </a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="Events.html">Events</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="Pictures.html">Pictures</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Aboutus.html">AboutUs</a>
                      </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="PersnoalInfo.html">Personal Info</a>
                    </li>   
                    <li class="nav-item active">
                      <a class="nav-link" href="UserComments.html">Reviews</a>
                  </li> 
                  <li class="nav-item active">
                    <a class="nav-link" href="PayFee.html">Generate Fee Voucher</a>
                </li>                                         
                  </ul>                
                </div>                                          
              </nav>
        </section>
         <form id="form1" runat="server" style="align-items:center;text-align:center;font:bold">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <hr/>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Name")%>'></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("date") %>'></asp:Label><br />
            <div runat="server" innerText ='<%#Eval("Comment")%>'></div>
                <hr />
            </ItemTemplate>
        </asp:Repeater>
        <div>
          <label>Name :</label> <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/><br />
          <label>Comment :</label><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Style="margin-left: -27px;width: 190px;"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Comment" OnClick="Button1_Click" class="btn btn-secondary btn-lg"/>
        </div>
       </form>
        <div class="gap"></div>
        <div class="footer">
            <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
</body>
</html>
