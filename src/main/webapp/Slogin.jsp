<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
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
						<h3>Student Sign In</h3>
						<%
						String serrorMsg=(String)session.getAttribute("sfailedMsg");
						if(serrorMsg!=null)
						{%>
							<h5 class="text-center text-danger"><%=serrorMsg %></h5>
						<%
						session.removeAttribute("sfailedMsg");
						}
						%>
						<form action="Slogin" method="post">
						<div class="form-floating mb-2">
							<input type="email" class="form-control" id="floatingInput"
								placeholder="name@example.com" required="required"
								name="susername"> <label for="floatingInput">Username</label>
						</div>
						<div class="form-floating mb-2">
							<input type="password" class="form-control" id="floatingPassword"
								placeholder="Password" required="required" name="spassword">
							<label for="floatingPassword">Password</label>
						</div>
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingPassword"
								placeholder="Roll No" required="required" name="srollno">
							<label for="floatingPassword">Roll No</label>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary w-100">Sign
								In</button>
							<br> <a href="Sregister.jsp">Create Account</a>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
