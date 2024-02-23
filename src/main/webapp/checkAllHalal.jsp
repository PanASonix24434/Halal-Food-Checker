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
        label {
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<br><br><br><br><br>
  <div class="container text-center">
    <h2>Check All Ingredients</h2>
    <form action="ControllerServlet" method="post">
        <div class="row">
            <div class="col-md-10 ">
                <label for="ingredients">Ingredients (comma-separated):</label>
                <!-- Use textarea for ingredients input with flexible width -->
                <textarea id="ingredients" name="ingredients" rows="4" class="form-control mx-auto" style="resize: vertical;" required></textarea>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-6 ">
                <input type="hidden" name="action" value="checkAllHalal">
                <input type="submit" value="Check All Halal" class="btn btn-primary">
            </div>
        </div>
    </form>
</div>
</body>

<footer>
<br><br><br><br><br>

 <jsp:include page="footer.jsp" />

</footer>
</html>
