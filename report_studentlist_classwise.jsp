<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Students</title>
<style>
body {
  background-color: ORANGE;
}
</style>

</head>
<body>


<form action="report_studentlist_classwise1.jsp" name="frmstudentlist">
<table align="center">
<tr>
<td>
Enter a Class: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sclass">
        
    </td>
    </tr>    
        
        <tr>
        <td>
      Enter a Division:&nbsp; <input type="text" name="sdivision">
        </td>
        </tr>
<tr>
<td align="center">
<input type="submit" name="submit">
</td>
</tr>
</table>

</form>







</body>
</html>