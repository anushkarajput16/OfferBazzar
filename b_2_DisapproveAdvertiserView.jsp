`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	PreparedStatement pstmt2=con.prepareStatement("UPDATE advertiser SET status=? WHERE aid=?");
			pstmt2.setString(1,"disapproved");
			pstmt2.setInt(2,aid);
			int i=pstmt2.executeUpdate();
			
		
		if(i>0)
		{
			System.out.println("update row"+i);
			response.sendRedirect("b_2_ViewAdvertiserTable.jsp");
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