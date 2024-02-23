<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="styles.jsp" />
    <jsp:include page="menus/menu_main.jsp" />
    <jsp:include page="search.jsp" />
</head>

<body>
<br><br><br><br><br><br><br><br>
    <div class="container mt-5">
        <div class="card text-center">
            <div class="card-header bg-success text-white">
                <h2>Report Confirmation</h2>
            </div>
            <div class="card-body">
                <p class="card-text">Thank you for submitting your report!</p>
                <button class="btn btn-primary" onclick="showAlert()">View Confirmation</button>
            </div>
        </div>
    </div>
    <script>
        function showAlert() {
            alert("Your report has been submitted successfully!");
        }
    </script>

    <!-- Bootstrap JS and Popper.js script links -->
</body>

<footer>
<br><br><br><br><br><br><br><br><br><br> 

 <jsp:include page="footer.jsp" />

</footer>
</html>
