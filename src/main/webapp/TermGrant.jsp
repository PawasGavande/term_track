<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TermGrant Slip</title>
<link rel="stylesheet" href="all_component/style.css">
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.Smenu {
	padding: 10px;
}
</style>
</head>
<body>
	<%@include file="all_component/NavAfterLogin.jsp"%>
	<div class="Smenu">
		<h2>Welcome Student</h2>
	</div>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-body">
						<h1>Term Grant Slip</h1>
						<table class="table">
							<thead class="table-primary bg-primary">
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Subject Name</th>
									<th scope="col">Faculty Name</th>
									<th scope="col">Remark</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">1</th>
									<td>Maths</td>
									<td>Rajesh Nair</td>
									<td>Submitted</td>
								</tr>
								<tr>
									<th scope="row">2</th>
									<td>Science</td>
									<td>Prithvi Das</td>
									<td>Submitted</td>
								</tr>
								<tr>
									<th scope="row">3</th>
									<td>English</td>
									<td>Rajesh Nigam</td>
									<td>Submitted</td>
								</tr>
							</tbody>
						</table>
						<button type="button" class="btn btn-primary w-50">Print</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>