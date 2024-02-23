<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="bean.HalalCheckerBean" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <jsp:include page="styles.jsp" />
    <jsp:include page="menus/menu_main.jsp" />
    <jsp:include page="search.jsp" />
    <script>
        // Function to capitalize the first letter of a string
        function capitalizeFirstLetter(string) {
            return string.charAt(0).toUpperCase() + string.slice(1);
        }

        // Function to add a search term from checkIngredient.jsp to history
        function addIngredientToHistory() {
            var userInput = document.getElementById('userInput');
            userInput.value = capitalizeFirstLetter(userInput.value.trim());
            addToHistory(userInput.value);
        }
    </script>
</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br><br>
<div class="container">
    <div class="row justify-content-center">
        <h2 class="text-center">Ingredient Checker</h2>
        <div class="col-8">
            <div class="form-floating">
                <form action="ControllerServlet?action=checkHalalStatus" method="post" onsubmit="addIngredientToHistory()">
                    <label for="userInput">Enter a single ingredient</label>
                    <input type="text" class="form-control" id="userInput" name="userInput" required><br>
                    <input class="col-md-2 btn btn-primary text-center" type="submit" value="Check Status">
                </form>
            </div>
        </div>
    </div>
</div>
</body>

<footer>
<br><br><br><br><br><br><br>
 <jsp:include page="footer.jsp" />
</footer>
</html>
