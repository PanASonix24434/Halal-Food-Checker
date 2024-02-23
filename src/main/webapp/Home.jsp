<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 	<jsp:include page="styles.jsp" />
    <jsp:include page="menus/menu_main_home.jsp" />
    <jsp:include page="search.jsp" />
    
</head>
<body>
<div id="section1"></div>
<br><br><br><br>

<div class="image-container">
    <img src="img/logo (2).png" alt="Centered Image">
</div>
<div class="fade-in" id="fadeInElement">


<h1>WELCOME </h1>


<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/img1.png" alt=" " class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>(Qur'an 2: 173)</h3>
        <p>Allah has forbidden Muslims to eat animals that did not die as the result of man, contain blood, are pigs, or have been sacrificed to another god.!</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="img/img2.png" alt=" " class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>(Sunan Ibn Majah 3349, Book 29, Hadith 99</h3>
        <p>A human being fills no worse vessel than his stomach. It is sufficient for a human being to eat a few mouthfuls to keep his spine straight. But if he must (fill it), then one third of food, one third for drink and one third for air.</p>
      </div> 
    </div>
    <div class="carousel-item">
      <img src="img/img3.jpg" alt=" " class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>(Qur'an 16: 114)</h3>
        <p>So eat out of the lawful and good sustenance that Allah has bestowed upon you, and thank Allah for His bounty, if it is Him that you serve.</p>
      </div>  
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

<div id="section2">
<h1>OUR SERVICES</h1>

<div class="row">
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
      <img src="img/services1.jpeg" class="card-img-top" alt="...">
        <h5 class="card-title">Ingredient Checker</h5>
        <p class="card-text">The ingredient checker for manual use is like having a personal food detective where you can examine and understand the ingredients in your groceries, empowering you to make informed choices about what you eat.</p>
        <a href="ControllerServlet?action=checkIngredient" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
      <img src="img/services2.jpeg" class="card-img-top" alt="...">
        <h5 class="card-title">Label Checker</h5>
        <p class="card-text">Label Checker streamlines your decision-making process by quickly examining and deciphering food labels. This ensures that you can make well-informed choices that align with your dietary preferences and health needs.</p>
        <a href="ControllerServlet?action=allHalal" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
  <div class="col-sm-3">
    <div class="card">
      <div class="card-body">
      <img src="img/services3.jpeg" class="card-img-top" alt="...">
        <h5 class="card-title">Halal Restaurant</h5>
        <p class="card-text">A Halal restaurant is a place where you can enjoy delicious meals prepared according to Islamic dietary guidelines, ensuring that the food meets the requirements for Muslim dietary preferences.</p>
        <a href="ControllerServlet?action=restaurant" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</div>
</div> 
<div id="section3">
    <h1>ABOUT</h1>
    
    <div class="container about"> 
  <div class="row">
    <div class="col-7 text-center "><br>
      <b>Welcome to Halal Food Ingredient Checker, your dedicated resource for ensuring the halal authenticity of your culinary choices.<br></b><br>
      
      <h3>OUR MISSION</h3><br>
            <b>Our mission is to provide a simple and effective tool that allows users to check food ingredients and make informed decisions about the halal or haram status of food items.<br></b><br>
  <br> <h3>HOW IT WORKS</h3> <br>
            <b>The Halal Food Ingredient Checker allows users to manually check the halal status of food items by entering the ingredients. Advanced algorithms analyze the provided information, providing users with a clear indication of whether the product aligns with halal dietary guidelines.<br></b><br>
   			<a href="ControllerServlet?action=aboutUs" class="btn btn-primary">Read More</a>
    </div>
   
  </div>
</div>
    </div>
    
    <h1>TEAM</h1>
    <div class="container">
    <div class="row">
  <div class="col-xl text-center"><br><br>
  <div class="card" style="width:auto">
  <b>Project Manager</b>
  <img class="card-img-top" src="img/PM.png" alt="Card image">
  <div class="card-body">
    <h5 class="card-title">MUHAMMAD ARIF SOLIHIN BIN MOHD SYUKRI (1210642)</h5>
   <!--  <p class="card-text">Some example text.</p>
    <a href="#" class="btn btn-primary">See Profile</a>-->
  </div>
</div>
  </div>
  <br><br>
  <div class="col-xl text-center"><br><br>
  <div class="card" style="width:auto">
  <b>Data Analysis</b>
  <img class="card-img-top" src="img/analisys.png" alt="Card image">
  <div class="card-body">
    <h5 class="card-title">AHMAD SHAZWAN BIN MOHAMMAD SHAHARIN (1211114)</h5>
   <!--  <p class="card-text">Some example text.</p>
    <a href="#" class="btn btn-primary">See Profile</a>-->
  </div>
</div>
  </div>
  <br><br>
  <div class="col-xl text-center"><br><br>
  <div class="card" style="width:auto">
  <b>Graphic Designer</b>
  <img class="card-img-top" src="img/design.png" alt="Card image">
  <div class="card-body">
    <h5 class="card-title">KHAIRIL AZHAR BIN RUSALAND @ ROSLAN (1210639)</h5>
    <!-- <p class="card-text">Some example text.</p>
    <a href="#" class="btn btn-primary">See Profile</a>-->
  </div>
</div>
  </div>
  <br><br>
  <div class="col-xl text-center"><br><br>
  <div class="card" style="width:auto">
  <b>Programmer</b>
  <img class="card-img-top" src="img/prog.png" alt="Card image">
  <div class="card-body">
    <h5 class="card-title" >MOHAMAD NORFADZLY AFZAN BIN KAMARUDIN (1210643)</h5>
    <!-- <p class="card-text">Some example text.</p>
    <a href="#" class="btn btn-primary">See Profile</a>-->
  </div>
</div>
  </div>
</div>
<div class="text-center">
    <a href="ControllerServlet?action=contact" class="btn btn-primary mx-auto">Read More</a>
</div>

    </div>

 </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var fadeElement = document.getElementById('fadeInElement');

            setTimeout(function() {
                fadeElement.classList.add('fade-in-show');
            }, 500);
        });
    </script>   
</body>

<footer>
<br><br><br>
    <div id="section4">
 <jsp:include page="footer.jsp" />
     </div>

</footer>
</html>