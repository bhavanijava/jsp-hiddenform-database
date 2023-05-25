<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

String fname=request.getParameter("fname");

String lname=request.getParameter("lname");
String email=request.getParameter("mail");
String firstpassword=request.getParameter("psw1");

String confpassword=request.getParameter("psw2");


String fullname=fname+lname;

String password=null;


if(firstpassword.equals(confpassword))
		{
			password=firstpassword;
		}


%>
<form action="S2.jsp" method="post">

<input type="hidden" name="t1" value="<%= fullname%>">
<input type="hidden" name="t2" value="<%= email%>">
<input type="hidden" name="t3" value="<%= password%>">
<center>
<table >
	<tr>
                        <td>Country</td>
                        <td>
                            <select name="ucountry">
                                <option value="">Select Country</option>
                                <option value="india">India</option>
                                <option value="USA">USA</option>
                                <option value="africa">Africa</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
			<td>RecoveryEmail</td>
			<td><input type="email" name="mail2"></td>
		</tr>
			  <tr>
			<td>DOB</td>
			<td><input type="date" name="date"></td>
		</tr>
			<tr>
                        <td>Gender</td>
                        <td><input type="radio" name="gender" value="female">female
                            <input type="radio" name="gender" value="male">male
                        </td>
			</tr>
			<tr>
			<td></td>
			<td><input type="submit" value="Register"></td>
		</tr>
		
</table>
</center>

</form>