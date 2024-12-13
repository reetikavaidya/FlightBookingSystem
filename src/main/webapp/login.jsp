<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Login - Flight Booking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
    <style>
        body, html {
            
            margin: 0;
            padding:0;
            font-family: Arial, Helvetica, sans-serif;
        }
        .bg {
            /* Background image */
            background-image: url('images/bgimg.jpg'); /* Replace with your background image path */
            /* Background settings */
            height: 100vh;
              
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            /* Gradient overlay */
            position: relative;
        }
        .bg::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5); /* Black with 50% opacity */
            background: linear-gradient(to bottom right, rgba(0, 0, 128, 0.7), rgba(0, 0, 0, 0.7)); /* Gradient overlay */
        }
        nav {
	width: 100%;
	background: rgb(2, 0, 36);
	background: linear-gradient(80deg, rgba(2, 0, 36, 1) 0%,
		rgba(9, 9, 121, 1) 39%, rgba(0, 212, 255, 1) 100%);
}

nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: space-around;
}

nav ul li {
	display: inline;
}

nav ul li a {
	display: block;
	color: green;
	padding: 10px 30px;
	text-decoration: none;
}

.nav-link {
	color: white;
	font-family: sans-serif;
	font-weight: 400;
	font-size: 18px;
}

.nav-link:hover {
	color: white;
	border-bottom: 4px solid white;
	font-size: 20px;
}
        .login-container {
           
            padding:50px;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            z-index: 1;
        }
        .login-form {
            background: rgba(1, 23, 50, 0.8);
            padding: 30px;
            border-radius: 10px;
            color: white;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .login-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .login-form .form-control {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            border: none;
        }
        .login-form .form-control:focus {
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }
        .login-form .btn-primary {
            background-color: #1e90ff;
            border: none;
        }
        .login-form .btn-primary:hover {
            background-color: #3742fa;
        }
    </style>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Flight Management</a>



		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav ml-auto">






				<li class="nav-item"><a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a>
				</li>



				<li class="nav-item"><a href="#login"
					class="nav-link active">Login</a></li>

			</ul>
		</div>
	</nav>
<section>
    <div class="bg">
        <div class="login-container">
            <form class="login-form" action="loginhandler.jsp" method="post">
                <h2>Login</h2>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
                        <p class="text-center mt-3"> <a href="forgotpassword.jsp" style="color:red;">Forgot password</a></p>
                
                <p class="text-center mt-3">Don't have an account? <a href="signup.jsp" style="color: #1e90ff;">Signup</a></p>

            </form>
                
       
        </div>
    </div>

    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/dist/js/bootstrap.min.js"></script>

         >
    </section>
</body>
</html>
