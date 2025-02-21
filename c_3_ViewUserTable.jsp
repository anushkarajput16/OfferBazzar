<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="com.r3sys.db.DbConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<%
	Connection con=DbConnection.connect();
	try{
		PreparedStatement pstmt = con.prepareStatement("select * from user");
		ResultSet rs=pstmt.executeQuery();
%>
	
	<table border="2">
	<tr>
		<th>uid</th>
		<th>name</th>
		<th>city</th>
		<th>contact</th>
		<th>address</th>
		<th>email</th>
		<th>password</th>
		
		
	</tr>
	<% while(rs.next()){ %>
	
	<tr>
	<td> <%= rs.getInt(1) %> </td>	
	<td> <%= rs.getString(2) %> </td>	
	<td> <%= rs.getString(3) %> </td>	
	<td> <%= rs.getString(4) %> </td>	
	<td> <%= rs.getString(5) %> </td>
	<td> <%= rs.getString(6) %> </td>
	<td> <%= rs.getString(7) %> </td>
	
		
	
	</tr>
	
	<%  } 
	
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
	
</center>
</body>
</html>