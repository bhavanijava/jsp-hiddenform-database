<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
String fullname=request.getParameter("t1");
String email=request.getParameter("t2");
String password=request.getParameter("t3");


String country=request.getParameter("ucountry");

String recoverymail=request.getParameter("mail2");
String dob=request.getParameter("date");
String gender=request.getParameter("gender");



try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bdb", "bdb");
	PreparedStatement ps=con.prepareStatement("insert into fbhiddenform values(?,?,?,?,?,?,?)");
	ps.setString(1,fullname);
	ps.setString(2,email);
	ps.setString(3,password);
	ps.setString(4,country);
	ps.setString(5,recoverymail);
	ps.setString(6,dob);
	ps.setString(7,gender);
	
	int i=ps.executeUpdate();
	if(i>=1)
	{
		response.sendRedirect("success.jsp");
		
	}
	else{
		out.print("Your Registeration not complete");
	}
	con.close();	
	}
	catch(Exception e)
	{
	out.print(e);
	}


%>