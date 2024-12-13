<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background: url('images/bgimg.jpg') no-repeat center center fixed;
	background-size: cover;
	color: white;
	width: 100%;
	min-height: 100vh; /* Ensure body takes full height of the window */
	overflow-x: auto; /* Prevent horizontal scrolling */
	overscroll-behavior-x: none;
	margin: 0;
	padding: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.signuppage {
	position: relative;
	padding: 2%;
}

.signup-container {
	
	
}

.signup-form {
	 background: rgba(1, 23, 50, 0.8);
            padding: 30px;
            border-radius: 10px;
            color: white;
            width: 100%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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



				<li class="nav-item"><a href="login.jsp"
					class="nav-link">Login</a></li>
					<li class="nav-item"><a class="nav-link active" href="signup#">Signup</a>
				</li>

			</ul>
		</div>
	</nav>

	<section class="signuppage">
		<div class="container signup-container">
			<div class="signup-form">
				<h2 class="text-center">Signup</h2>
				<form action="signupHandler.jsp" method="post">
					<div class="form-group">
						<label for="username">Username:</label> <input type="text"
							class="form-control" id="username" name="username" required>


						<label for="password">Password:</label> <input type="password"
							class="form-control" id="password" name="password" required>


						<label for="confirmPassword">Confirm Password:</label> <input
							type="password" class="form-control" id="confirmPassword"
							name="confirmPassword" required> <label for="email">Email:</label>
						<input type="email" class="form-control" id="email" name="email"
							required> <label>Gender:</label><br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="male"
								name="gender" value="Male"> <label
								class="form-check-label" for="male">Male</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="female"
								name="gender" value="Female"> <label
								class="form-check-label" for="female">Female</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" id="other"
								name="gender" value="Other"> <label
								class="form-check-label" for="other">Other</label>
						</div>


						<label for="mobile">Mobile No.:</label> <input type="text"
							class="form-control" id="mobile" name="mobile" required>


						<label for="dob">Date of Birth:</label> <input type="date"
							class="form-control" id="dob" name="dob" required> <label
							for="address">Address:</label>
						<textarea class="form-control" id="address" name="address"
							rows="3" required></textarea>
							<br>

						<button type="submit" class="btn btn-primary btn-block">Signup</button>
				</form>
			</div>
		</div>
	</section>

	<!-- Include Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		// Optional: Add custom JavaScript for additional form validation
		document.querySelector('form').addEventListener(
				'submit',
				function(event) {
					var password = document.getElementById('password').value;
					var confirmPassword = document
							.getElementById('confirmPassword').value;
					if (password !== confirmPassword) {
						alert('Passwords do not match!');
						event.preventDefault();
					}
				});
	</script>
</body>
</html>
