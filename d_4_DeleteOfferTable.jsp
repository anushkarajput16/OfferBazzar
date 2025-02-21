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
	
	int id=Integer.parseInt(request.getParameter("id"));
	Connection con=DbConnection.connect();
	
	
	try{
		PreparedStatement pstmt=con.prepareStatement("delete from offers where id=?");
		pstmt.setInt(1,id);
		int i=pstmt.executeUpdate();
		if(i>0)
		{
			System.out.println("deleted row count"+i);
			response.sendRedirect("d_4_ViewOfferTable.jsp");
		}else{
			System.out.println("deleted row count"+i);
		}
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
</center>

</body>
</html>