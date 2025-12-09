<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBconnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TermTrack System</title>
<link rel="stylesheet" href="all_component/style.css">
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">

.card-grid {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 10px;
}

.card {
  flex: 1 1 45%;
  margin-bottom: 10px;
}

.card-body {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

h5.card-title {
  margin-bottom: 10px;
}

p.card-text {
  margin-bottom: 10px;
  text-align: center;
}

.btn.btn-primary {
  margin-top: 10px;
}

.bg-custom{
	background-color:#3949ab;
}

.navbar .nav-item:hover .nav-link{
	background-color: white; 
	color: blue;
	border-radius: 20px;
}



</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div id="carouselExampleIndicators" class="carousel slide">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/Assignment-Managementcr1.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/school-work-851328_640.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/arisa-chattasa-0LaBRkmH4fM-unsplash.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="card-grid">
		<div class="card" style="width: 18rem;">
			<div class="card-body">
			<h1><i class="fa-regular fa-user"></i></h1>
				<h5 class="card-title">Register as Student</h5>
				<a href="Sregister.jsp" class="btn btn-primary">Sign Up</a>
			</div>
		</div>

		<div class="card" style="width: 18rem;">
			<div class="card-body">
			<h1><i class="fa-solid fa-chalkboard-user"></i></h1>
				<h5 class="card-title">Register as Teacher</h5>
				<a href="Tregister.jsp" class="btn btn-primary">Sign Up</a>
			</div>
		</div>

		<div class="card" style="width: 18rem;">
			<div class="card-body">
			<h1><i class="fa-regular fa-user"></i></h1>
				<h5 class="card-title">Student Login</h5>
				<a href="Slogin.jsp" class="btn btn-primary">Login</a>
			</div>
		</div>
		<div class="card" style="width: 18rem;">
			<div class="card-body">
			<h1><i class="fa-solid fa-chalkboard-user"></i></h1>
				<h5 class="card-title">Teacher Login</h5>
				<a href="Tlogin.jsp" class="btn btn-primary">Login</a>
			</div>
		</div>
	</div>

</body>
</html>