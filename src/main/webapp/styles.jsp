<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.11.6/umd/popper.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link class="logo" rel="icon" href="img/icon.png" type="image/png">

</head>

<style>
body {
      position: relative; 
      overflow-x: hidden;
      overflow-y: transperant;
  }
  /* For Webkit browsers like Chrome and Safari */
::-webkit-scrollbar {
    width: 12px; /* Set a width for the scrollbar */
}

/* Track */
::-webkit-scrollbar-track {
    background: transparent; /* Set the background color of the track to transparent */
}

/* Handle */
::-webkit-scrollbar-thumb {
    background: rgba(150, 239, 255, 0.5); /* Set the background color and transparency of the scrollbar handle */
    border-radius: 6px; /* Optional: Add rounded corners to the scrollbar handle */
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
    background: rgba(150, 239, 255, 0.8); /* Set a different color on hover if desired */
}
  
        h1 {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 20vh; 
            margin: 0; 
        }
        .logo{
            max-width: 100%;
            height: auto;
        }
       .fade-in {
            opacity: 0;
            transition: opacity 1s;
        }

        .fade-in-show {
            opacity: 1;
        }
        
        .image-container {
    display: flex;
    align-items: center;
    justify-content: center;
    max-width: 100%;
}

.row{
padding:20px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.row .col-sm-3{
margin: 10px;
padding: 10px;
margi-bottom: 10px;
}

.row .col-sm-3 img{
	margin:0px;
	padding:30px;
	border-radius: 50px;
}

.carousel-inner{
	background-color: #f0f0f0;
            box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.3);
}

 .custom-line {
            border-top: 1px solid #fff; 
            margin: 20px 0; 
            margin-top:20px;
        }
        .custom-width {
        width: 200px;
         /* Adjust the width as needed */
    }
    .about{
    background-color: #96EFFF;
    border-radius: 50px;

    }
    </style>
</head>
</html>