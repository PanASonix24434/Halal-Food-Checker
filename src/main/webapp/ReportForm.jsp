<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:include page="styles.jsp" />
    <jsp:include page="menus/menu_main.jsp" />
    <jsp:include page="search.jsp" />
    
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
        }

        input,
        textarea {
            margin-bottom: 15px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<br><br><br><br>
    <div class="container">
        <h2 class="text-center">Contact Us</h2>
        <br><br>
        <form action="ReportServlet" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>

            <div class="mb-3">
                <label for="subject" class="form-label">Subject:</label>
                <input type="text" class="form-control" id="subject" name="subject" required>
            </div>

            <div class="mb-3">
                <label for="message" class="form-label">Message:</label>
                <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Submit Report</button>
        </form>
    </div>
    
    <div class="container">
    
    <h2 class="text-center">Find Us on Google Maps</h2>
    <br><br><br>
    <div style="position: relative; padding-bottom: 75%; height: 0; overflow: hidden;">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.903065349805!2d101.7792316758596!3d2.8443215549489937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cdc69055555555%3A0x1c13ef5330eef2ed!2sUniversiti%20Sains%20Islam%20Malaysia!5e0!3m2!1sen!2smy!4v1704900776771!5m2!1sen!2smy" 
  width="100%" height="100%" style="position: absolute; top: 0; left: 0; border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
    
    </div>
</body>

<footer>
<br><br><br>

 <jsp:include page="footer.jsp" />

</footer>
</html>
