<%@ page import="java.sql.*, java.util.List, java.util.Arrays" %>
<%@ page import="bean.HalalCheckerBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <!-- ... (existing code) -->
    <jsp:include page="styles.jsp" />
    <jsp:include page="menus/menu_main.jsp" />
    <jsp:include page="search.jsp" />
</head>
<body>
    <br><br><br><br><br><br><br><br><br>
  <div class="container">
        <div class="card result-card">
            <div class="card-header result-header">
                <h2 class="card-title">Halal Status Result</h2>
            </div>
            <div class="card-body result-content">
                <%
                    Connection conn = null;
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        String url = "jdbc:mysql://localhost:3306/halal_scanner_new?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                        conn = DriverManager.getConnection(url, "root", "root");

                        if (conn != null) {
                            out.print("<br>");

                            // Create an instance of HalalCheckerBean with the database connection
                            HalalCheckerBean halalChecker = new HalalCheckerBean(conn);

                            // Get the halal status based on the user-entered ingredient
                            String userInput = request.getParameter("userInput");
                            List<String> ingredients = Arrays.asList(userInput.split("\\s*,\\s*"));
                            String status = halalChecker.checkHalalStatus(ingredients);

                            // Determine the category based on the halal status
                            String category = status.equalsIgnoreCase("Halal") ? "halal" : "haram";

                            // Display the result
                            String[] ingredientDetails = halalChecker.getIngredientDetails(userInput, category);
                            String ingredientName = ingredientDetails[0];
                            String ingredientDescription = ingredientDetails[1];
                            %>
                            <p>Ingredient: <%= userInput %></p>
                            <p>Description: <%= ingredientDescription %></p>
                            <p>Halal Status: <%= status %></p>

                            <!-- Button to return to checkIngredient.jsp -->
                            <form action="checkIngredient.jsp" method="get" class="text-center mt-3">
    						<button type="submit" class="btn btn-primary">
    						<i class="bi bi-arrow-left-square"></i>
    						Return to Check Ingredient</button>
							</form>
                            <%
                        }
                    } catch (Exception e) {
                        out.print("Not connected to the database: " + e.getMessage());
                    } finally {
                        if (conn != null) {
                            try {
                                conn.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                %>
            </div>
        </div>
    </div>

</body>
<footer>
    <br><br><br><br><br><br><br><br>
    <!-- ... (existing code) -->
    <jsp:include page="footer.jsp" />
</footer>
</html>
