<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
<meta charset="ISO-8859-1">
 	<jsp:include page="styles.jsp" />
    <jsp:include page="menus/menu_main.jsp" />
    <jsp:include page="search.jsp" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 50px;
        }
        h2 {
            color: #007bff;
        }
        p {
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
    </head>
<body>
<br><br><br><br><br><br><br><br>
    <div class="container text-center">
    <br>
        <h2>Result - Food Ingredients</h2>
        <p>Status: <%= request.getAttribute("halalStatus") %></p>
        
        <!-- Add more details or styling as needed -->
    </div>

</body>

<footer>
<br><br><br><br><br><br><br><br>

 <jsp:include page="footer.jsp" />

</footer>
</html>
