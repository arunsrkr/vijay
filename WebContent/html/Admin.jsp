<%@page import="java.sql.*" %>
<style>
.logout {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  padding-left: 1202px;
  
}

</style>
<form  action="Logout.jsp">
<div class="logout">
<input type="submit" value="Logout"/>
</div>
</form>
<%

if(session.getAttribute("username")==null){
	response.sendRedirect("Home.html");
}

Connection con = null;
Statement stm = null;
try{
Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/cca", "root", "admin");
	
	String qry = "SELECT * FROM cca_course_enquiry";
	
	stm = con.createStatement();
	ResultSet rs = stm.executeQuery(qry);
	
	ResultSetMetaData rsmd = rs.getMetaData();
	
	int count = rsmd.getColumnCount();
	%>
	<table id="dataTab" border="" align="">
	<tr bgcolor="red"><%
	for(int col=1;col<=count;col++){
		%>
		<td><%out.println(rsmd.getColumnName(col));%></td><%
	}
	%><td>Comment(s)</td>
	<td>Action</td></tr><% 
	while(rs.next()){
		%><tr bgcolor="yellow">
		
		<%
		for(int col=1;col<=count;col++){
			%>
		<td><%out.println(rs.getString(col));%></td><%	
		}
		%>
		<td><input type="text" name="comment" size=50></td>
		<td><input type="button" name="editBtm"  value="Edit"></td>
		</tr><%
			}
	%>
	
	</table><%
}
catch(Exception e){
	e.printStackTrace();
}
	
%>