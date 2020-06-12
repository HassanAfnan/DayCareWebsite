<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="DayCareWebsite.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>AboutUS</title>
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
                      <a class="nav-link" href="index.html">Home </a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="Events.html">Events</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="Pictures.html">Pictures</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="AboutUS.html">About US</a>
                      </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="PersnoalInfo.html">Personal Info</a>
                    </li>                                         
                  </ul>                
                </div>                                          
              </nav>
        </section>
       <div class="image">
         <img src="Images/FARAZ.jpg" >
       </div>
        <div class="content">
        
        </div>
        <div class="gap"></div>
        <div class="footer">
            <p>All Rights Reserved copy Rights &copy; 2020 superchilddaycare.com<p>
        </div>
    </form>
</body>
</html>
