<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student</title>
<link rel="stylesheet" href="all_component/style.css">
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.menu {
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  justify-content: flex-start;
  gap: 2rem;
  padding-top: 10px;
  padding-left: 10px;
  padding-bottom: 10px
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
.menu3{
	padding-top: 10px;
	padding-left: 10px;
}
</style>
</head>
<body style="background-color: #f5f5f5;">
<%@include file="all_component/NavAfterLogin.jsp"%>
<div class="menu3">
	<h2>Welcome Teacher</h2>
</div>
<div class="menu">
  <div class="button-group">
    <a class="btn btn-primary" href="CreateClass.jsp" role="button">Add Subject</a>
    <a class="btn btn-primary" href="#" role="button">Edit Subject</a>
    <a class="btn btn-primary" href="#" role="button">Remove Subject </a>
  </div> 
</div>
<table class="table">
  <thead class="table-primary bg-primary">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Subject Name</th>
      <th scope="col">Teacher Name</th>
      <th scope="col">Operation</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Maths</td>
      <td>Rajesh Nair</td>
      <td>
      	<a href="#" class="btn btn-sm btn-outline-primary">Enter</a>
      	<a href="#" class="btn btn-sm btn-outline-danger">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Science</td>
      <td>Prithvi Das</td>
      <td>
      	<a href="#" class="btn btn-sm btn-outline-primary">Enter</a>
      	<a href="#" class="btn btn-sm btn-outline-danger">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>English</td>
      <td>Rajesh Nigam</td>
      <td>
      	<a href="#" class="btn btn-sm btn-outline-primary">Enter</a>
      	<a href="#" class="btn btn-sm btn-outline-danger">Delete</a>
      </td>
    </tr>
  </tbody>
</table>

</body>
</html>