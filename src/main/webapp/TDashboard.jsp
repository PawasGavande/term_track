<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher DashBoard</title>
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
    <a class="btn btn-primary" href="CreateClass.jsp" role="button">Create Class</a>
    <a class="btn btn-primary" href="#" role="button">Join Class</a>
    <a class="btn btn-primary" href="#" role="button">Dismiss Class</a>
  </div> 
</div>
<table class="table">
  <thead class="table-primary bg-primary">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Class Name</th>
      <th scope="col">Class ID</th>
      <th scope="col">Operation</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Class 8</td>
      <td>1568</td>
      <td>
      	<a href="Subhect.jsp" class="btn btn-sm btn-outline-primary">Enter</a>
      	<a href="#" class="btn btn-sm btn-outline-danger">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Class 4</td>
      <td>2586</td>
      <td>
      	<a href="#" class="btn btn-sm btn-outline-primary">Enter</a>
      	<a href="#" class="btn btn-sm btn-outline-danger">Delete</a>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Class 5</td>
      <td>9865</td>
      <td>
      	<a href="#" class="btn btn-sm btn-outline-primary">Enter</a>
      	<a href="#" class="btn btn-sm btn-outline-danger">Delete</a>
      </td>
    </tr>
  </tbody>
</table>
</body>
</html>