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
	String category = request.getParameter("category");
	Connection con=DbConnection.connect();
	
	
	
	try{
		PreparedStatement pstmt = con.prepareStatement("select * from offers where category=? ");
		pstmt.setString(1,category);
		
				ResultSet rs=pstmt.executeQuery();
%>
	
	<table border="2">
	<tr>
		<th>id</th>
		<th>aid</th>
		<th>offerName</th>
		<th>offerDetails</th>
		<th>startDate</th>
		<th>endDate</th>
		<th>pincode</th>
		<th>area</th>
		<th>city</th>
		<th>category</th>
		
		
		
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