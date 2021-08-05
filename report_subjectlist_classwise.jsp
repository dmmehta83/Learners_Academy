<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject List</title>
<style>
body {
  background-color: ORANGE;
}
</style>

</head>
<body>

<form action="report_subjectlist_classwise1.jsp" name="frmstudentlist">

	<table align="center">
	<tr>
	<td>
	Enter a Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="sclass">
        
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