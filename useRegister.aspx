<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="useRegister.aspx.cs" Inherits="DayCareWebsite.useRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
        <link rel = "stylesheet" href = "style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
</head>
<body style="background-image:linear-gradient(to right, rgb(232, 55, 219), rgb(113, 113, 255));">
    <form id="form1" runat="server">
        <section id = "nav-bar">                                    
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
        <div id = "slider">
            <div id="headerslider" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img id="slide-img" src="Images/slide1.jpg" class="d-block img-fluid" alt="...">
                </div>
                <div class="carousel-item">
                  <img id="slide-img" src="Images/slide2.jpg" class="d-block img-fluid" alt="...">
                </div>
                <div class="carousel-item">
                  <img id="slide-img" src="Images/slide3.jpg" class="d-block img-fluid" alt="...">
                </div>
              </div>
              <a class="carousel-control-prev" href="#headerslider" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#headerslider" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>            
          <div class="act">
            <h1>USER REGISTRATION</h1>
          </div>
        <div class="reg-inp">            
          <form class="Register">
            <label>Child Name </label><br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Child's Name"></asp:TextBox><br />
            <label>Gender </label><br />                    
            <div class="btn-group btn-group-toggle" data-toggle="buttons">
              <label class="btn btn-secondary active">
                <asp:RadioButton ID="RadioButton1" runat="server"/> Male 
              </label>
              <label class="btn btn-secondary">
                <asp:RadioButton ID="RadioButton2" runat="server" /> Female 
              </label><br />
            </div><br />
            <label>Age </label><br />
              <asp:TextBox ID="TextBox3" runat="server" placeholder="Child's age"></asp:TextBox><br/>
            <label>Gaurdian's Name </label><br />
              <asp:TextBox ID="TextBox4" runat="server" placeholder="Your Name"></asp:TextBox><br />
            <label>Relation With Child </label><br />
              <asp:TextBox ID="TextBox5" runat="server" placeholder="Relation"></asp:TextBox><br />
            <label>Email </label><br />
              <asp:TextBox ID="TextBox6" runat="server" type="email" placeholder="E-mail"></asp:TextBox><br />
            <label>Password </label><br />
              <asp:TextBox ID="TextBox7" runat="server" type="text" placeholder="Password"></asp:TextBox><br />
            <label>Child's Photo</label><br />
              <asp:Image ID="Image1" runat="server" class="img-pho" style="width: 64px;height: 64px;" /><br />
              <asp:FileUpload ID="FileUpload1" runat="server" Width="239px"/><br />
              <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" class="btn btn-secondary btn-lg"/><br />
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
              <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" class="btn btn-secondary btn-lg"/><br />
          </form>  
        </div>
        <div class="gap">
          <!--<h1></h1>-->
        </div>                
        <div class="footer">
            <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com</p>
        </div>
    </form>
</body>
</html>
