<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersnoalInfo.aspx.cs" Inherits="DayCareWebsite.PersnoalInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Your Account</title>
        <link rel = "stylesheet" href = "style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
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
          <div class="gap"></div>        
          <div class="act">
            <h1>YOUR ACCOUNT INFORMATION</h1>
          </div>
        <div class="box-inp">            
        <!--  <form >-->
              <label>Child's Name </label><br />
              <label class="pers" id="CName">Laiba Mazhar</label><br />
              <label >Gaurdian's Name </label><br />
              <label class="pers" id="GName">Mazhar Alam</label><br />
              <label>Relation With Child </label><br />
              <label class="pers" id="Relation">Father</label><br />
              <label>Fee </label><br />
              <label class="pers" id="Amount">800</label>
              <label>US $</label><br />
           <!-- </form>-->            
        </div>
        <div class="gap"></div>
        <div class="footer">
            <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
    </form>
</body>
</html>
