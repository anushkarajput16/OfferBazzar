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
		PreparedStatement pstmt = con.prepareStatement("select * from advertiser where status='approved'");
		ResultSet rs=pstmt.executeQuery();
%>
	
	<table border="2">
	<tr>
		<th>aid</th>
		<th>name</th>
		<th>shopName</th>
		<th>category</th>
		<th>openTime</th>
		<th>closeTime</th>
		<th>address</th>
		<th>area</th>
		<th>city</th>
		<th>pincode</th>
		<th>latitude</th>
		<th>longitude</th>
		<th>contact</th>
		<th>email</th>
		<th>password</th>
		<th>status</th>
		
		
		
		
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
	<td> <%= rs.getString(8) %> </td>
	<td> <%= rs.getString(9) %> </td>	
	<td> <%= rs.getString(10) %> </td>
	<td> <%= rs.getString(11) %> </td>
	<td> <%= rs.getString(12) %> </td>
	<td> <%= rs.getString(13) %> </td>
	<td> <%= rs.getString(14) %> </td>
	<td> <%= rs.getString(15) %> </td>
	<td> <%= rs.getString(16) %> </td>
	
	
		
	
	
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