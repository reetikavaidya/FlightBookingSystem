<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Frontend Project</title>
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

    <!-- Section 1 -->
    <section class="section1">
        <div class="content">
            <h1>Welcome to <span>Our <br/>Flight Booking Site</span></h1>
            <p class="par">Find the best deals on flights and hotels with us.</p>
            <button class="cn"><a href="hotel.jsp">Explore Now</a></button>
        </div>
        
    <!-- Search Form -->
    <div class="search-container">
        <div class="search-header">
            <b>Flights</b>
        </div>
        <div class="search-form">
                <input type="text" placeholder="From" name="from" required>
                <input type="text" placeholder="To" name="to" required>
                <input type="date" name="travelDate" required>
                <button type="submit" class="btn-search">Search Flight</button>
                <hr />
                <div class="categories">
                    <input class="category-btn" type="button" value="Armed Forces">
                    <input class="category-btn" type="button" value="Family & Friends">
                    <input class="category-btn" type="button" value="Students">
                </div>
            </div>
    </div>
    </section>


    <!-- Section 3 -->
    <section class="section3">
        <div class="hotel-container">
    <!--    <h2 class="title">Our Hotels</h2>-->
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
        <h1>About Us</h1>
        <p class="mission-par">Our mission is to make travel accessible and convenient for everyone. We strive to offer competitive prices, a user-friendly booking process, and excellent customer service.</p>
        <h2>Meet the Team</h2>
        <p class="team-par">Our team is composed of passionate travel enthusiasts and technology experts who are committed to delivering the best service to our customers. We work tirelessly to improve our platform and ensure that you have a great experience.</p>
    </section>

    <!-- JavaScript libraries -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRrE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7HUiB39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
        document.querySelectorAll('.category-btn').forEach(button => {
            button.addEventListener('click', function() {
                button.style.backgroundColor = 'rgb(128, 128, 255)'; // Change to the desired color
            });
        });
    </script>

</body>
</html>
