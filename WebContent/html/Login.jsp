<%@page import="java.sql.*" %>
<%


String user = request.getParameter("uname");
String pass = request.getParameter("pass");
Connection con = null;
try{
Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/cca", "root", "admin");

  String qry = "SELECT count(*) FROM cca_login_details  where username='"+user+"' and password='"+pass+"'";
  
   Statement stm  = con.createStatement();
   ResultSet rs = stm.executeQuery(qry);


rs.next();
if(rs.getInt(1)==1){
session.setAttribute("username", user);
response.sendRedirect("Admin.jsp");

}
else
response.sendRedirect("Home.html");


}
catch(Exception e){
e.printStackTrace();
}
%>