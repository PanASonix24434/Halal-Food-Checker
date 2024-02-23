<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      
 <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Halal Food Checker</title>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="50">
<nav class="navbar navbar-light fixed-top" style="background-color: #e3f2fd;">
    <nav class="navbar navbar-expand-lg ">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll-end" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="ControllerServlet?action=Home">
        <b>Home</b>
    </a>
</li>
<li class="nav-item">
    <div class="dropdown " >
        <button class="btn dropdown-toggle" style="background-color: #e3f2fd;" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
            <b>Service</b>
        </button>
        <ul class="dropdown-menu" style="background-color: #e3f2fd;"aria-labelledby="dropdownMenuButton">
            <li><a class="dropdown-item nav-link active text-center" style="background-color: #e3f2fd;" aria-current="page" href="ControllerServlet?action=checkIngredient"><b>Checker</b></a></li>
            <li><a class="dropdown-item nav-link active text-center" style="background-color: #e3f2fd;" aria-current="page" href="ControllerServlet?action=allHalal"><b>Halal Status</b></a></li>
            <li><a class="dropdown-item nav-link active text-center" style="background-color: #e3f2fd;" aria-current="page" href="ControllerServlet?action=restaurant"><b>Restaurant</b></a></li>
        </ul>
    </div>
</li>
<li class="nav-item">
    <a class="nav-link active" href="ControllerServlet?action=aboutUs">
        <b>About Us</b>
    </a>
</li>
<li class="nav-item">
    <a class="nav-link active" href="ControllerServlet?action=contact">
        <b>Contact</b>
    </a>
</li>      
      </ul>
    </div>
  </div>
</nav>
</nav>
</body>