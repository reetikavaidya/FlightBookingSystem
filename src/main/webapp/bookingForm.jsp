<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.demo.Flight" %>
     <%@ page import="com.demo.Dao" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Flight Booking Form</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" type="text/css" href="css/bookingForm.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
 <jsp:useBean id="e"  class="com.demo.Flight"  ></jsp:useBean>
          
          <jsp:setProperty property="*" name="e"/> 
  <%
   int  id= Integer.parseInt(request.getParameter("id"));
   System.out.print(id);
   Flight e1=  Dao.getRecordById(id);
   
   
   %>
    <nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Flight Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="hotel.jsp">Hotels</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">My Trips</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle btn-success" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Account
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Login</a>
                        <a class="dropdown-item" href="#">Register</a>
                        <a class="dropdown-item" href="#">Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
   
   <section class="sectionbook">
 
   <div class="container">
    
    <form action="bill.jsp" method="post" class="book-form">
    <h1 class="heading">Book a Flight</h1><br>
    
     <label for="Flight Number" class="form-show">Flight Number:</label>
        <input type="text" id="flight_no" name="flight_no" value="<%=e1.getFlight_number()%>" required><br>
        
        <label for="departure" class="form-show">Departure City:</label>
        <input type="text" id="departure" name="departure" value="<%=e1.getDeparture_city()%>" required><br>
        
        <label for="destination" class="form-show">Destination City:</label>
        <input type="text" id="destination" name="destination"  value="<%=e1.getArrival_city()%>" required><br>
        
        <label for="departureDate" class="form-show">Departure Date:</label>
        <input type="date" id="departureDate" name="departureDate"  value="<%=e1.getDeparture_date()%>" required><br>
        
        <label for="returnDate" class="form-show">Return Date:</label>
        <input type="date" id="returnDate" name="returnDate"><br>
        
         <label for="price" class="form-show">Price:</label>
        <input type="text" id="price" name="price" value="<%=e1.getPrice()%>" required><br>
        
         <label for="category" class="form-show">Category:</label>
        <input type="text" id="category" name="category" value="<%=e1.getCategory()%>" required><br><br>
        
        
        <label for="passengers" class="form-show">Number of Passengers:</label>
        <input type="number" id="passengers" name="passengers" min="1" required><br/>
        
         <button type="submit" class="btn-book">Book Flight</button>
    </form>
    </div>
      </section>
      
       <!-- JavaScript libraries -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRrE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7HUiB39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
</body>
</html>
