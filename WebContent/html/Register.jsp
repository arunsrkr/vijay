<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String gender = request.getParameter("gender");
String qual   = request.getParameter("qual");
String[] time   = request.getParameterValues("time");
String[] course   = request.getParameterValues("course");
String mobile     = request.getParameter("mobile");
String email      = request.getParameter("email");

String temp ="";
String temp1 ="";

for(String x:time){
temp = temp+x+",";	
}

for(String x:course){
temp1 = temp1+x+",";	
}

Connection con = null;
Statement stm = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/cca", "root", "admin");
	
	PreparedStatement pst = con.prepareStatement("insert into cca_course_enquiry values(?,?,?,?,?,?,?,?,curdate())");
	pst.setString(1, fname);
	pst.setString(2,lname);
	pst.setString(3, gender);
	pst.setString(4, qual);
	pst.setString(5, temp.substring(0, temp.length()-1));
	pst.setString(6,temp1.substring(0, temp1.length()-1));
	pst.setString(7,mobile);
	pst.setString(8,email);
	
	
	boolean flag = pst.execute();
	
	%>
	<script>
	alert("data saved successfully..We will get back to you soon...");
	</script>
	<%
	
		response.sendRedirect("Home.html");
	
		
		
	
}
catch(Exception e){
	e.printStackTrace();
}


%>
</body>
</html>