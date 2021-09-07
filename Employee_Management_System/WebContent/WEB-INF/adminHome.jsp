<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<title >Employee Management System - Admin Home</title>
		 
		<script>
			//if ( window.history.replaceState )
			if(<%request.getSession().getAttribute("role");%> == null)
			{
				//window.history.replaceState( null, null, window.location.href );
				window.history.replaceState( null, null, "${pageContext.request.contextPath}/index.jsp" );
			}
		</script>
	</head>
	<body>
		<h2 style="color:#7b71e7;font-family: "Arial Black", Gadget, sans-serif;">Employee Management System - Admin Home</h2>
		<h3 style="position: relative; left: 10px; top: 20px;color:#91a5e6;font-family: "Arial Black", Gadget, sans-serif;">Departments</h3>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">
			<li class="nav-item">
				<a class="nav-link" href="createDepartment.spring" style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">Add Department</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="viewDepartmentsDetails.spring"style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">List Department Names</a>
			</li>
		</ul>
		<h3 style="position: relative; left: 10px; top: 20px;color:#91a5e6;font-family: "Arial Black", Gadget, sans-serif;">Employees</h3>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">
			<li class="nav-item">
				<a class="nav-link" href="addEmployeeDetails.spring"style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">Add Employee Information</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="viewEmployeesDetails.spring"style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">List All Employees</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="inputEmployeeId.spring"style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">Update Employee Details</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="deleteEmployeeDetails.spring"style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">Delete Employee Details</a>
			</li>
		</ul>
		<h3 style="position: relative; left: 10px; top: 20px;color:#91a5e6;font-family: "Arial Black", Gadget, sans-serif;">Regulations</h3>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">
			<li class="nav-item">
				<a class="nav-link" href="createCompliance.spring"style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">Add Regulation</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="viewCompliancesDetails.spring"style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">View Regulations</a>
			</li>
		</ul>
		<h3 style="position: relative; left: 10px; top: 20px;color:#91a5e6;font-family: "Arial Black", Gadget, sans-serif;">Compliance Tracking</h3>
		<ul class="nav" style="position: relative; left: 10px; top: 10px;">
		 
			<li class="nav-item">
				<a class="nav-link" href="viewStatusReportsDetails.spring"style="color:#f5a5ef;font-family:Impact, Charcoal, sans-serif;letter-spacing: 3px;">Show Status</a>
			</li>
		</ul>
		<a class="btn btn-primary" href="logout.spring" style="position: relative; top: 10px; margin: 20px;">Logout</a>
		<div style="position: relative; top: 25px">
			<span style="color: red">${requestScope.msg}</span>
		</div>
	</body>
</html>