<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
	<jsp:include page="styles.jsp" />
    <jsp:include page="menus/menu_main.jsp" />
    <jsp:include page="search.jsp" />


    <title>About Us - Halal Food Ingredient Scanner</title>
    <!-- You can include your CSS styles or other meta tags here -->
</head>
<body>
    <br><br><br><br>

       <div class="container mt-5">
        <div class="text-center">
            <h2>About Halal Food Ingredient Checker</h2>
            <p class="lead">Welcome to Halal Food Ingredient Checker, your reliable companion in ensuring the halal authenticity of your culinary choices.</p>
        </div>
<br>
        <div class="my-4 text-center">
            <h3>Our Mission</h3>
            <p>At Halal Food Ingredient Checker, we are dedicated to providing a seamless experience for individuals who prioritize halal dietary practices. Our mission is to simplify the process of determining the halal status of food ingredients and restaurants, empowering you to make informed choices aligned with your cultural and religious beliefs.</p>
        </div>
<br>
        <div class="my-4 text-center">
            <h3>How It Works</h3>
            <p><b>Ingredient Checker</b>: Quickly verify the halal or haram status of individual ingredients with our easy-to-use tool. Get detailed descriptions to understand the reasons behind each classification.</p>
            
            <p><b>Food Label Scanner</b>: Take the guesswork out of grocery shopping. Scan food labels to check the halal or haram status of packaged products, ensuring your choices align with your dietary preferences.</p>
            
            <p><b>Halal Restaurant Directory</b>: Explore our curated list of halal-friendly restaurants. From local gems to popular chains, find establishments that cater to your halal dining needs.</p>
        </div>
<br>
        <div class="my-4 text-center">
            <h3>Contact Us</h3>
            <p>We value your feedback and inquiries. If you have any questions or suggestions, please feel free to contact us at <a href="ControllerServlet?action=contact">Contact Us</a>.</p>
        </div>
    </div>

  <footer>
<br><br><br><br>
     <jsp:include page="footer.jsp" />
 
</footer>

</html>