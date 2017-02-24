<!DOCTYPE html>
<html>
<title>Pick&Pack</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="w3-black-theme.css">
<link rel="stylesheet" href="font-awesome.min.css">
<body id="myPage">

<!-- Side Navigation on click -->
<nav class="w3-sidenav w3-white w3-card-2 w3-animate-left" style="display:none;z-index:2" id="mySidenav">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-closenav w3-xxxlarge w3-text-teal">Close
    <i class="fa fa-remove"></i>
  </a>
  <a href="#">Link 1</a>
  <a href="#">Link 2</a>
  <a href="#">Link 3</a>
  <a href="#">Link 4</a>
  <a href="#">Link 5</a>
</nav>

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-opennav w3-right w3-hover-white w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="/" class="w3-bar-item w3-button w3-teal"><i class="fa fa-home w3-margin-right"></i>${title}</a>
  <a href="/formFieldWBootstrap" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Add items</a>
  <a href="#work" class="w3-bar-item w3-button w3-hide-small w3-hover-white">Delete items</a>
  
  <a href="#contact" class="w3-bar-item w3-button w3-hide-small w3-hover-white">View Items</a>
 <a href="#About Us" class="w3-bar-item w3-button w3-hide-small w3-hover-white">About Us</a>
  </div>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-teal" title="Search"><i class="fa fa-search"></i></a>
 </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium">
    <a href="#team" class="w3-bar-item w3-button">Team</a>
    <a href="#work" class="w3-bar-item w3-button">Work</a>
    <a href="#pricing" class="w3-bar-item w3-button">Price</a>
    <a href="#contact" class="w3-bar-item w3-button">Contact</a>
    <a href="#" class="w3-bar-item w3-button">Search</a>
  </div>
</div>

<!-- Image Header -->
<div class="w3-display-container w3-animate-opacity">
  <img src="header.jpg" alt="boat" style="width:100%;min-height:350px;max-height:700px;">
  <div class="w3-container w3-display-bottomleft w3-margin-bottom">  
    <button onclick="document.getElementById('id01').style.display='block'" class="w3-btn w3-xlarge w3-theme w3-hover-teal" title="Go To W3.CSS">Pick&Pack</button>
  </div>
</div>

<!-- Modal -->
<div id="id01" class="w3-modal">
  <div class="w3-modal-content w3-card-8 w3-animate-top">
    <header class="w3-container w3-teal"> 
      <span onclick="document.getElementById('id01').style.display='none'" class="w3-closebtn"><i class="fa fa-remove"></i></span>
      <h4>Oh snap! We just showed you a modal..</h4>
      <h5>Because we can <i class="fa fa-smile-o"></i></h5>
    </header>
    <div class="w3-container">
      <p>Cool huh? Ok, enough teasing around..</p>
      <p>Go to our <a class="w3-btn" href="/w3css/default.asp">W3.CSS Tutorial</a> to learn more!</p>
    </div>
    <footer class="w3-container w3-teal">
      <p>Modal footer</p>
    </footer>
  </div>
</div>

<!-- Team Container -->
<div class="w3-container w3-padding-64 w3-center" id="team">
<h2>Meet the Team</h2>

<div class="w3-row"><br>

<div class="w3-quarter">
  <img src="pearl.jpg" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Pearl</h3>
</div>

<div class="w3-quarter">
  <img src="brick.jpg" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Bricky</h3>
</div>

<div class="w3-quarter">
  <img src="ako.jpg" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Penya</h3>
</div>

<div class="w3-quarter">
  <img src="jason.jpg" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Jason</h3>
</div>

<div class="w3-quarter">
  <img src="aia.jpg" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
  <h3>Aia</h3>
</div>

</div>
</div>

<!-- Work Row -->
<div class="w3-row-padding w3-padding-64 w3-theme-l1" id="work">

<div class="w3-quarter">
<h2>Our Work</h2>
<p>Pick&Pack respects and protects your privacy. By providing Pick&Pack with your information, you agree you have read, understood, and consent to the terms of our Privacy Statement and agree that we may collect, use, and disclose information you have provided as described in our Privacy Statement which also explains how you can request access to and correction of the personal information we hold about you, how we handle complaints and the third parties to use and process your personal information who are located overseas.</div>

<div class="w3-quarter">
<div class="w3-card-2 w3-white">
 <center> <img src="clock.png" alt="Vernazza" style="width:36%" ></center>
  <div class="w3-container">
  <h3>Real-time Inventory Visibility</h3>
  <p>Enjoy real-time, detailed visibility into key inventory control and supply chain management measures, including inventory trends, stock on order and supplier on-time performance.</p>
 
  </div>
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card-2 w3-white">
  <center><img src="scale.png" alt="Cinque Terre" style="width:50%"></center>
  <div class="w3-container">

  <h3>Balance in All Things</h3>
  <p>Pick&Pack saves any distribution countless hours of work associated with data entry, organization and fulfillment. You'll be able to convert leads to orders, orders to shipments, and shipments to revenue in short order.</p>

  </div>
  </div>
</div>

<div class="w3-quarter">
<div class="w3-card-2 w3-white">
  <center><img src="arrow.png" alt="Monterosso" style="width:50%"></center>
  <div class="w3-container">
  <h3>One System for Your Entire Company</h3>
  
  <p>Eliminate IT costs and concerns associated with maintaining and upgrading separate applications.</p>
  
  </div>
  </div>
</div>

</body>
</html>