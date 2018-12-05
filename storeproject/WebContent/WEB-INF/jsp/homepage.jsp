<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="globalCSS.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="index.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=checkbox], input[type=number]
	{
	width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: auto;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	width: 50%;
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="homepage.jsp">Homepage</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="profile.do">My Profile</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Java</a></li>
						<li><a href="#">C++</a></li>
						<li><a href="#">Phyton</a></li>
					</ul></li>
				<li><a href="#">My Profile</a></li>
				<li><a href="contactUs.jsp">Contact Us</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><button
						onclick="document.getElementById('id01').style.display='block'"
						style="width: auto;">Login</button></li>

				<li><button
						onclick="document.getElementById('id02').style.display='block'">Sign
						up</button></li>
			</ul>
		</div>
	</nav>
	<div id="id01" class="modal">
		<form class="modal-content animate" action="login.do">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>
			<div class="container">
				<label for="uname"><b>Name</b></label> <input type="text"
					placeholder="Enter Name" name="name" required> <br> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="password" required><br>
				<button type="submit">Login</button>
				<br> <label> <input type="checkbox" checked="checked"
					name="remember"> Remember me
				</label>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<button type="button"
					onclick="document.getElementById('id01').style.display='none'"
					class="cancelbtn">Cancel</button>
				<span class="psw">Forgot <a href="#">password?</a></span>
			</div>
		</form>
	</div>


	<div id="id02" class="modal">
		<form class="modal-content animate" action="register.do">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id02').style.display='none'"
					class="close" title="Close Modal">&times;</span>
				<h1>Registration Page</h1>
			</div>

			<div class="container">
				<table>
					<tr>
						<td><label for="name"><b>Name</b></label>
						<td><input type="text" placeholder="Enter Name" name="name"
							required></td>
					</tr>
					<tr>
						<td><label for="psw"><b>Password</b></label></td>
						<td><input type="password" placeholder="Enter Password"
							name="password" required></td>
					</tr>
					<tr>
						<td><label for="mobile"><b>Mobile</b></label></td>
						<td><input type="number" placeholder="Enter Mobile number"
							name="mobile" required></td>
					</tr>
					<tr>
						<td><label for="email"><b>Email</b></label></td>
						<td><input type="text" placeholder="Enter Email Address"
							name="email" required></td>
					</tr>
					<tr>
						<td><label for="address"><b>Address</b></label></td>
						<td><input type="text" placeholder="Enter Address"
							name="address" required></td>
					</tr>
					<tr>
						<td col='2'>
							<button type="submit">Register</button>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>

	<script>
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}

		var modal = document.getElementById('id02');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>


</body>
</html>
