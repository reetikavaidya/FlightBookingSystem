<%@page import="com.demo.billdao"%>
<%@page import="com.demo.bill"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill Calculation</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <!-- Navigation Bar -->
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

    <section class="section-bill container mt-5 ">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h1 class="h3">Bill Calculation</h1>
            </div>
            <div class="card-body">
                <%
                try {
                    String flight_no = request.getParameter("flight_no");
                    String departure = request.getParameter("departure");
                    String destination = request.getParameter("destination");
                    String departureDate = request.getParameter("departureDate");
                    String returnDate = request.getParameter("returnDate");
                    int passengers = Integer.parseInt(request.getParameter("passengers"));
                    double ticketPrice = Double.parseDouble(request.getParameter("price"));
                    String category = request.getParameter("category");

                    double discount = 0.0;

                    switch (category) {
                        case "adult":
                            discount = 0.0; // No discount for adults
                            break;
                        case "Armed Forces":
                            discount = 0.5; // 50% discount for Armed Forces
                            break;
                        case "senior":
                            discount = 0.3; // 30% discount for seniors
                            break;
                    }

                    double totalPrice = passengers * ticketPrice;
                    double discountAmount = totalPrice * discount;
                    double finalPrice =( passengers *totalPrice )- discountAmount;

                    boolean hasReturnDate = returnDate != null && !returnDate.trim().isEmpty();
                    request.setAttribute("hasReturnDate", hasReturnDate);

                    bill b = new bill();
                    b.setFlight_no(flight_no);
                    b.setDeparture(departure);
                    b.setDestination(destination);
                    b.setDepartureDate(departureDate);
                    b.setReturnDate(returnDate);
                    b.setTicketPrice(ticketPrice);
                    b.setCategory(category);
                    b.setPassengers(passengers);
                    b.setDiscount(discount);

                    int status = billdao.save(b);
                %>
                    <p><strong>Flight Number:</strong> <%=flight_no%></p>
                    <p><strong>Departure City:</strong> <%=departure%></p>
                    <p><strong>Destination City:</strong> <%=destination%></p>
                    <p><strong>Departure Date:</strong> <%=departureDate%></p>
                    <c:if test="${hasReturnDate}">
                        <p><strong>Return Date:</strong> <%=returnDate%></p>
                    </c:if>
                    <c:if test="${!hasReturnDate}">
                        <p><strong>Return Date:</strong> NA</p>
                    </c:if>
                    <p><strong>Number of Passengers:</strong> <%=passengers%></p>
                    <p><strong>Ticket Price (per passenger):</strong> $<%=ticketPrice%></p>
                    <p><strong>Category:</strong> <%=category%></p>
                    <p><strong>Total Price:</strong> $<%=totalPrice%></p>
                    <p><strong>Discount:</strong> $<%=discountAmount%></p>
                    <p><strong>Final Price:</strong> $<%=finalPrice%></p>
                <%
                } catch (NumberFormatException e) {
                    out.println("<p class='text-danger'>Error in processing the bill: Invalid number format.</p>");
                } catch (Exception e) {
                    out.println("<p class='text-danger'>Error in processing the bill: " + e.getMessage() + "</p>");
                }
                %>
                <button type="button" class="btn btn-success btn-download mt-3">Download</button>
            </div>
        </div>
    </section>

    <!-- JavaScript libraries -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRrE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7HUiB39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
        document.querySelectorAll('.btn-download').forEach(button => {
            button.addEventListener('click', function() {
                button.style.backgroundColor = 'rgb(228, 128, 255)'; // Change to the desired color
            });
        });
    </script>
</body>
</html>
