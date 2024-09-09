
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<title>Hello, world!</title>
</head>
<body style="background: #e2e2e2;">

	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card mt-3">

					<div class="card-body" style="background-color: #e9f7ff">
						<img alt="Not Found" src='<c:url value="/img/images/earth2.jpg" />'
							style="height: 20%" width="20%">
						<h1 class="text-center text-dark">Complex Form</h1>

						<form action="HandleForm" method="post">
						<div class="alert alert-danger" role="alert">

							<form:errors path="student.*" />
						</div>
							<div class="form-group">
								<label>Your Name</label> <input type="text" name="name"
									placeholder="Enter Name" class="form-control"> <small>we'll
									never share your name to anyone</small>
							</div>

							<div class="form-group">
								<label>Your Id</label> <input type="text" name="id"
									placeholder="Enter Id" class="form-control">
							</div>

							<div class="form-group">
								<label>DOB</label> <input type="text" name="date"
									placeholder="dd/mm/yy" class="form-control">
							</div>

							<div class="form-group">
								<label>Select-Courses</label> <select class="form-control"
									name="courses">
									<option>JAVA</option>
									<option>PYTHON</option>
									<option>.NET</option>
									<option>REACT-JS</option>
									<option>MERN</option>
								</select>
							</div>

							<div class="form-group">
								<span>Gender</span><br>
								<div>
									<input type="radio" name="gender" value="male"><label>Male</label>&nbsp;&nbsp;
									<input type="radio" name="gender" value="female"><label>Female</label>
								</div>
							</div>

							<div class="form-group">
								<label>Student</label> <select class="form-control" name="type">
									<option value="oldStudent">Old-Student</option>
									<option value="newStudent">New-Student</option>
								</select>
							</div>

							<div class="card">
								<div class="card-body " style="background-color: black;">
									<p class="text-center text-light">Enter Address</p>


									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Enter State" name="address.state" />
									</div>

									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Enter City" name="address.city" />
									</div>

									<div class="form-group">
										<input type="number" class="form-control"
											placeholder="Enter PinCode" name="address.pincode" />
									</div>
								</div>
							</div>
							
							<div class="form-group text-center mt-3">
								<button class="btn btn-dark">Submit</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
