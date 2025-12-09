<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Login</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h1>TermTrack</h1>
						<h3>Faculty Sign In</h3>
						<%
						String errorMsg=(String)session.getAttribute("failedMsg");
						if(errorMsg!=null)
						{%>
							<h5 class="text-center text-danger"><%=errorMsg %></h5>
						<%
						session.removeAttribute("failedMsg");
						}
						%>
						<form action="Tlogin" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Username</label> <input type="email" class="form-control"
									id="exampleInputEmail1" placeholder="Enter Username"
									required="required" name="username">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Enter password"
									required="required" name="password">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Faculty
									Id</label> <input type="number" class="form-control"
									id="exampleInputEmail1" placeholder="Enter Faculty Id"
									required="required" name="facultyid">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary w-100">Sign
									In</button>
								<br> <a href="Tregister.jsp">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>