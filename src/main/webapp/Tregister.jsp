<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Teacher Registration</h4>
						<%
						String sucMsg=(String)session.getAttribute("succMsg");
						String errorMsg=(String)session.getAttribute("failedMsg");
						if(sucMsg!=null)
						{%>
							<h5 class="text-success text-center"><%=sucMsg %></h5>
						<%
						session.removeAttribute("succMsg");
						}
						if(errorMsg!=null)
						{%>
							<h5 class="text-center text-danger"><%=errorMsg %></h5>
						<%
						session.removeAttribute("failedMsg");
						}
						%>
						
						<form action="Tregister" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Name</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									placeholder="Enter name" required="required" name="tname">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Faculty
									Id</label> <input type="number" class="form-control"
									id="exampleInputEmail1" placeholder="Enter Faculty Id"
									required="required" name="facultyid">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Phone
									Number</label> <input type="number" class="form-control"
									id="exampleInputEmail1" placeholder="Enter phone number"
									required="required" name="phno">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" placeholder="Enter Email"
									required="required" name="email">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Enter password"
									required="required" name="password">
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>