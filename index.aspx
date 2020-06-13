<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DayCareWebsite.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Super Child Day Care</title>
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
                <a class="navbar-brand" href="index.html">SuperChildDayCare</a>
                
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <a class="navbar-log" href="Login.html">Login/Register</a>                
                  <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="index.aspx">Home </a>
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
                    <a class="nav-link" href="UserSlip.aspx">Generate Fee Voucher</a>
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

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Sign out" OnClick="Button1_Click"/>

        <div class="act">
          <h1>ACTIVITY</h1>
        </div>
        <div class="activity-pics">          
          <div class="card-group">
            <div class="card">
              <img src="Images/activities/act10.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Game</h5>
                <p class="card-text">UNO game is going on</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              </div>
            </div>
            <div class="card">
              <img src="Images/activities/act9.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Baby Birthday</h5>
                <p class="card-text">Hassan's Birthday</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              </div>
            </div>
            <div class="card">
              <img src="Images/activities/act8.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Baby Dinner</h5>
                <p class="card-text">biryani and kabab</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              </div>
            </div>            
          </div>
        </div>               
        <div>
          <h1>  </h1>
        </div>
        <div class="act">
          <h1>EVENTS</h1>
        </div>
        <div class="Events-pics">          
          <div class="card-group">
            <div class="card">
              <img src="Images/activities/act1.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Eid Day 2</h5>
                <p class="card-text">Qurbani</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              </div>
            </div>
            <div class="card">
              <img src="Images/activities/act2.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Eid Day1</h5>
                <p class="card-text">The Eid celebrations</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              </div>
            </div>
            <div class="card">
              <img src="Images/activities/act3.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Holi</h5>
                <p class="card-text">Holi Celebrations at it peak</p>
                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
              </div>              
            </div>                       
          </div>          
        </div>          
        <div>
          <h1>  </h1>
        </div>              
        <div class="footer">
          <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
    </form>
</body>
</html>
