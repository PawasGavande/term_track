<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Student Registration</h4>
						<%String ssucMsg=(String)session.getAttribute("sucMsg");
						String serrorMsg=(String)session.getAttribute("failMsg");
						
						if(ssucMsg!=null)
						{%>
							<h5 class="text-success text-center"><%=ssucMsg %></h5>
						<%
						session.removeAttribute("sucMsg");
						}
						if(serrorMsg!=null)
						{%>
							<h5 class="text-danger text-center"><%=serrorMsg %></h5>
						<%
						session.removeAttribute("failMsg");}
						
						%>
						<form action="Sregister" method="post">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Name</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									placeholder="Enter name" required="required" name="sname">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Roll
									No</label> <input type="number" class="form-control"
									id="exampleInputEmail1" placeholder="Enter Roll number"
									required="required" name="srollno">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Course</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									placeholder="Enter Course name" required="required" name="scourse">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Class</label>
								<input type="text" class="form-control" id="exampleInputEmail1"
									placeholder="Enter class" required="required" name="sclass">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Phone
									Number</label> <input type="number" class="form-control"
									id="exampleInputEmail1" placeholder="Enter phone number"
									required="required" name="sphno">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" placeholder="Enter Email"
									required="required" name="semail">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Enter password"
									required="required" name="spassword">
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
<body>

</body>
</html>