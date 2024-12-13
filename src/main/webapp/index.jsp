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
    <title>Flight Booking</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
   <!-- Navigation Bar -->
   <nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand " href="#">Flight Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ml-auto">
                <h2 class="welcome mr-5 ">Welcome, <%= username %>!</h2>
                <li class="nav-item active">
                    <a class="nav-link custom-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
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

    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Section 1 -->
    <section class="section1">
        <div class="content">
            <h1>Welcome to <span>Our <br/>Flight Booking Site</span></h1>
            <p class="par">Find the best deals on flights and hotels with us.</p>
            <button class="cn"><a href="hotel.jsp">Explore Now</a></button>
        </div>
        
        <!-- Form -->
        <div class="search-container">
            <form action="searchResults.jsp" method="post" class="search-form">
                <div class="search-header">
                    <b>Flights</b>
                </div>
                <div class="search-form">
                    <input type="text" placeholder="From" name="from"  required>
                    <input type="text" placeholder="To" name="to" required>
                    <input type="date" name="travelDate" required>
                    <button type="submit" class="btn-search">Search Flight</button>
                    <div class="categories">
                        <input class="category-btn" type="button" value="Armed Forces">
                        <input class="category-btn" type="button" value="Family & Friends">
                        <input class="category-btn" type="button" value="Students">
                    </div>
                </div>
            </form>
        </div>
    </section> 
        
    <!-- Section 3 -->
    <section class="section3">
        <div class="hotel-container">
            <div class="card">
                <img src="images/hotels/hotel1.jpg" alt="Hotel 1">
                <h3>Hotel 1</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <button>Book Now</button>
            </div>
            <div class="card">
                <img src="images/hotels/hotel2.jpeg" alt="Hotel 2">
                <h3>Hotel 2</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <button>Book Now</button>
            </div>
            <div class="card">
                <img src="images/hotels/hotel3.jpg" alt="Hotel 3">
                <h3>Hotel 3</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                <button>Book Now</button>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="about-content">
        <div class="containerabout">
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
     </section>

    <!-- JavaScript for category buttons -->
    <script>
        document.querySelectorAll('.category-btn').forEach(button => {
            button.addEventListener('click', function() {
                button.style.backgroundColor = 'rgb(128, 128, 255)';
            });
        });
    </script>
</body>
</html>
