<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details Form</title>
</head>
<body>
											<h2>||Employee Details||</h2>
	<form action="saveDetails" method = "post">
											<pre>
				                		                      <font color="red" size="2" face="Arial">	Employee Name</font>
				                		                   <input type = "text" name = "name"/>
										            <font color="red" size="2" face="Arial">Email</font> 
										<input type = "email" name = "email"/>
									<font color="red" size="2" face="Arial">Date of birth </font>
									<input type = "date" name = "dob"/>
								 	<font color="red" size="2" face="Arial">	  Age </font>
								 	<input type = "number" name = "age"/>
								<font color="red" size="2" face="Arial">	Salary </font>
								<input type = "text" name = "salary"/>
									<font color="red" size="2" face="Arial">			Status </font>
									<input type = "text" name = "status"/>
											<input type = "submit" value = "save"/>
	</pre>
	</form>
	${msg}
</body>
</html>