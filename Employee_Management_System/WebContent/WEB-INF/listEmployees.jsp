<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
if(session.getAttribute("userid")==null || session.getAttribute("role")==null)
{
	response.sendRedirect(request.getContextPath() + "/index.jsp");
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employees</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="styles.css" />
		<script>
			//if ( window.history.replaceState )
			if(<%request.getSession().getAttribute("role");%> == null)
			{
				//window.history.replaceState( null, null, window.location.href );
				window.history.replaceState( null, null, "${pageContext.request.contextPath}/index.jsp" );
			}
		</script>
		<style>
			table
			{
				width:100%;
			}
			table, th, td
			{
				border: 1px solid green;
				border-collapse: collapse;
			}
			th, td
			{
				padding: 15px;
				text-align: left;
			}
			#t01 tr:nth-child(even)
			{
				background-color: #FED7D7;
			}
			#t01 tr:nth-child(odd)
			{
				background-color: #DCD7FE;
			}
			#t01 th
			{
				background-color: black;
				color: white;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<ul class="nav">
				<li class="nav-item">
					<a class="nav-link" href="adminDashboard.spring">Dashboard</a>
				</li>
			</ul>
			<h2 style="color:#47955b;font-family: Impact, Charcoal, sans-serif;font-size: 25px;letter-spacing: 2px;">View All Employees Details</h2>
			<table id="t01">
				<tr>
					<th>Employee ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Date of Birth</th>
					<th>Email</th>
					<th>Department</th>
				</tr>
				<core:forEach items="${sessionScope.allEmployeesDetails}" var="employee">
					<tr>
						<td>${employee.empid}</td>
						<td>${employee.firstname}</td>
						<td>${employee.lastname}</td>
						<td>${employee.dob}</td>
						<td>${employee.email}</td>
						<td>${sessionScope.allDepartmentsDetails.get(employee.department_id)}</td>
					</tr>
				</core:forEach>
			</table>
		</div>
	</body>
</html>