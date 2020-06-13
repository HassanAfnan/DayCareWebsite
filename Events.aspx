<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="DayCareWebsite.Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Events</title>
        <link rel = "stylesheet" href = "style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
</head>
<body  style="background-image:linear-gradient(to right, rgb(232, 55, 219), rgb(113, 113, 255));">
    <form id="form1" runat="server">
       <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
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
                      <a class="nav-link" href="Events.aspx">Events</a>
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
        <div class="gap"></div>
        <div class="act">
          <h1>EVENTS</h1>
        </div>  
          <div class="Events-pics">          
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
              <div class="card">
                <img src="Images/activities/act10.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Game</h5>
                  <p class="card-text">UNO game is going on</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>              
            </div>
          </div>    
          <div class="gap"></div>
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
              <div class="card">
                <img src="Images/activities/act10.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Game</h5>
                  <p class="card-text">UNO game is going on</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>              
            </div>
          </div>         
          <div class="gap"></div>
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
              <div class="card">
                <img src="Images/activities/act10.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Game</h5>
                  <p class="card-text">UNO game is going on</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>              
            </div>
          </div>             
          <div class="gap"></div>
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
              <div class="card">
                <img src="Images/activities/act10.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Game</h5>
                  <p class="card-text">UNO game is going on</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>              
            </div>
          </div>        

        <div class="footer">
            <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
    </form>
</body>
</html>
