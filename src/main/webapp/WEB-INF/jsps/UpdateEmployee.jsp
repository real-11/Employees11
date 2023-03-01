<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body>
<h2>Update Employee Details</h2>
	<form action = "updateDetails" method="post">
		<pre>
				ID <input type = "text" name = "id" value = "${empl.id}"/>
				Name <input type="text" name="name" value = "${empl.name}"/>
				Email <input type="email" name="email" value = "${empl.email}"/>
				DOB <input type="date" name="dob" value = "${empl.dob}"/>
				Age <input type="number" name="age" value = "${empl.age}"/>
				Salary <input type="number" name="salary" value = "${empl.salary}"/>
				Status <input type="text" name="status" value = "${empl.status}"/>
				<input type="submit" value = "Save Changes"/>
	</pre>
	</form>

</body>
</html>