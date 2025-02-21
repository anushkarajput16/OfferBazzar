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
	<%

     int aid=Integer.parseInt(request.getParameter("aid"));


Connection con=DbConnection.connect();

try{
	
		PreparedStatement pstmt=con.prepareStatement("select * from advertiser  where status='Approved'");
	
		ResultSet rs=pstmt.executeQuery();
		//String status="Approved";
		int i=0;
		
			
		
		if(i>0)
		{
			response.sendRedirect("a_1_dashboardAdmin.html");
		}
		else
		{
			System.out.println("Approved");
		}
			
		}catch(Exception e)
	{
			e.printStackTrace();
	}
		
		
		
%>
	

</body>
</html>