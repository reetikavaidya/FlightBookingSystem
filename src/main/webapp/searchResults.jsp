
<%@page import="com.demo.Dao"%>
<%@page import="com.demo.Flight"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
 <jsp:useBean id="e"  class="com.demo.Flight"  ></jsp:useBean>
          
          <jsp:setProperty property="*" name="e"/> 
          
          <%
      
          String from = request.getParameter("from");
          String to = request.getParameter("to");
          String travelDate = request.getParameter("travelDate");
          String category = request.getParameter("category"); %>

         <%
         
         
         
              List<Flight> flights =Dao.getallRecord(from,to,travelDate,category);
         
         request.setAttribute("rs", flights);
         
         %>
  


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


    <div class="search-result">
        <h2 > Available Flights</h2>
        <c:choose>
            <c:when test="${not empty rs and fn:length(rs) > 0}">
                <table border="1">
                    <thead>
                        <tr>
                         <th>id</th>
                            <th>Flight Number</th>
                            <th>Departure City</th>
                            <th>Arrival City</th>
                            <th>Departure Date</th>
                            <th>Price</th>
                            <th>Category</th>
                             <th>Book Ticket</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row" items="${rs}">
                            <tr>
                             <td><c:out value="${row.id}"/></td>
                                <td><c:out value="${row.flight_number}"/></td>
                                <td><c:out value="${row.departure_city}"/></td>
                                <td><c:out value="${row.arrival_city}"/></td>
                                <td><c:out value="${row.departure_date}"/></td>
                                <td><c:out value="${row.price}"/></td>
                                <td><c:out value="${row.category}"/></td>
                                
                                   <td >
                           
                           <a   href="bookingForm.jsp?id=${row.getId()}" class="book-ticket-link">Book</a>
                          
                          </td>
                           
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <p>No flights found for the selected criteria.</p>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
