<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student DashBoard</title>
<link rel="stylesheet" href="all_component/style.css">
<%@include file="all_component/allCss.jsp"%>

<style type="text/css">
.Smenu {
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	justify-content: flex-start;
	gap: 2rem;
	padding-top: 20px;
	padding-left: 20px;
}

.button-group {
	display: flex;
	justify-content: flex-start;
	gap: 3rem; /* Add space between buttons using CSS */
}

.menu2{
	padding-top: 10px;
	padding-left: 20px;
}
</style>
</head>
<body style="background-color: #f5f5f5;">
	<%@include file="all_component/NavAfterLogin.jsp"%>
	<div class="Smenu">
		<h2>Welcome Student</h2>
		<div class="button-group">
			<a class="btn btn-primary" href="#" role="button">Join Class</a> <a
				class="btn btn-primary" href="TermGrant.jsp" role="button">Term Grant Slip</a> <a
				class="btn btn-primary" href="#" role="button">Notice</a>
		</div>
	</div>

	<div class="menu2">
		<div class="card" style="width: 18rem;">
			<img src="img/pexels-max-fischer-5212338.jpg" class="card-img-top"
				alt="...">
			<div class="card-body">
				<h5 class="card-title">Class 1</h5>

				<a href="#" class="btn btn-primary">Open</a>
			</div>
		</div>

	</div>

</body>
</html>