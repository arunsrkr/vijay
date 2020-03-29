<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.html" %>
<hr>
<form id="signupForm" action="Register.jsp" method="post">

<table id="reg" align="center" border="1">
<tr>
 <td>First Name</td>
 <td><input type="text" name="fname"></td> 
</tr>
<tr>
 <td>Last Name</td>
 <td><input type="text" name="lname"></td> 
</tr>

<tr>
 <td>Gender</td>
 <td><input type="radio" name="gender" value="M" checked="true">Male
     <input type="radio" name="gender" value="F">Female</td> 
</tr>
<tr>
<td>Qualification</td>
<td>
<select name="qual">
<option value="select">---SELECT---</option>
 <option value="BTech">B.Tech</option>
 <option value="MTech">M.Tech</option>
 <option value="MCA">MCA</option>
 <option value="MSC">MSC</option>
</select>
</td>
</tr>
<tr>
<td>Timings</td>
<td>
<input type="checkbox" name="time"  value="morning">Morning(9AM to 12PM)
<input type="checkbox" name="time"  value="afternoon">Afternoon(12PM to 4PM)
<input type="checkbox" name="time"  value="evening">Evening(4PM to 7PM)
</td>
</tr>
<tr>
<td>Course</td>
<td>
<input type="checkbox" name="course" value="CLanguage">C-Language
<input type="checkbox" name="course" value="Java">Java
<input type="checkbox" name="course" value="html">HTML
</td>
</tr>
<tr>
 <td>Mobile</td>
 <td><input type="text" name="mobile"></td> 
</tr>
<tr>
 <td>Email</td>
 <td><input type="text" name="email"></td> 
</tr>
<tr>
 <td></td>
 <td><input type="submit" value="SignUp"></td> 
</tr>


</table>

</form>
<br>
<%@ include file="Footer.html" %>
</body>
</html>