<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Class</title>
<link rel="stylesheet" href="all_component/style.css">
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.h2 {
	padding: 10px;
	text-align: center;
}
</style>
</head>
<body style="background-color: #f5f5f5;">
	<%@include file="all_component/NavAfterLogin.jsp"%>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h2 class="h2">Create Class</h2>
						<form action="CreateClass" method="post"
							enctype="multipart/form-data">
							<div class="form-floating mb-4">
								<input type="text" class="form-control" id="floatingInput"
									placeholder="name" required="required" name="classname">
								<label for="floatingInput">Class Name</label>
							</div>
							<div class="form-floating mb-4">
								<input type="number" class="form-control" id="floatingPassword"
									placeholder="Class ID" required="required" name="classid">
								<label for="floatingPassword">Class ID</label>
							</div>
							<div class="text-center mb-4">
								<button type="submit" class="btn btn-primary w-50">Create Class</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>