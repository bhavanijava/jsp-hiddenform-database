<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="Register.jsp" method="post">

	<center>
	<table >
		<tr>
			<td>FirstName</td>
			<td><input type="text" name="fname"></td>
		</tr>
		<tr>
			<td>LastName</td>
			<td><input type="text" name="lname"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" name="mail"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="psw1"></td>
		</tr>
		<tr>
			<td>ConfPasword</td>
			<td><input type="password" name="psw2                                           "></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Next"></td>
		</tr>
		
	</table>
	</center>

</form>




</body>
</html>