<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
</head>
<body>
	<h2>All Employees</h2>
		<table border = 1>
				<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>DOB</th>
				<th>Age</th>
			<th>Salary</th>
			<th>Status</th> 
			<th>Update</th>
			<th>Delete</th>
				</tr>
		<c:forEach var="empl" items="${empl}">
				<tr>
				<td>${empl.id}</td>
				<td>${empl.name}</td>
				<td>${empl.email}</td>
				<td>${empl.dob}</td>
				<td>${empl.age}</td>
				<td>${empl.salary}</td>
				<td>${empl.status}</td>
				<td><a href = "update?id=${empl.id}">update</a></td>
				<td><a href = "delete?id=${empl.id}">delete</a></td>
				</tr>
		</c:forEach>
		</table>
</body>
</html>