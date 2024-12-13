<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Us - Flight Management System</title>
   <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 960px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
        }
        p {
            margin: 10px 0;
        }
        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .team-member {
            margin: 20px;
            text-align: center;
        }
        .team-member img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
        }
        .team-member h2 {
            margin-top: 10px;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
 <nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand " href="#">Flight Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                <h2 class="welcome mr-5 ">Welcome, <%= username %>!</h2>
                <li class="nav-item ">
                    <a class="nav-link custom-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link custom-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-link" href="contact.jsp">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-link" href="hotel.jsp">Hotels</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link custom-link" href="#">My Trips</a>
                </li>
                <li class="nav-item">
                    <a href="logout.jsp" class="btn btn-primary">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <h1>About Us</h1>
        <p>Welcome to the Flight Management System! We are dedicated to providing the best flight booking and management experience for our customers. Our mission is to make air travel convenient, efficient, and enjoyable for everyone.</p>

        <h2>Our Team</h2>
        <div class="team">
            <div class="team-member">
                <img src="images/member1.jpeg" alt="Team Member 1">
                <h2>John Doe</h2>
                <p>CEO & Founder</p>
            </div>
            <div class="team-member">
                <img src="images/member2.jpeg" alt="Team Member 2">
                <h2>Jane Smith</h2>
                <p>Chief Technology Officer</p>
            </div>
            <div class="team-member">
                <img src="images/member3.jpeg" alt="Team Member 3">
                <h2>Mike Johnson</h2>
                <p>Head of Customer Service</p>
            </div>
        </div>
    </div>
</body>
</html>
