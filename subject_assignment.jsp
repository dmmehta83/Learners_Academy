<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subject Assignment</title>
<style>
body {
  background-color: ORANGE;
}
</style>

</head>
<body>

<div align="center">
    <h2>Subject Assignment</h2>
    <form action="add_subjectassignmentclass" method="get">
        
        <table>
        <tr>
        <td>
        Subject Assignment Id:<input type="text" name="sai">
        
        </td>
        </tr>
        <tr>
        <td>
        Select a Subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <select name="subject">
            <c:forEach items="${listSubject}" var="subject">
                <option value="${subject.subject_id}">
                    ${subject.subject_name}
                </option>
            </c:forEach>
        </select>
        </td>
        </tr>
        
      
      <tr>
      <td>  
      Select a Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <select name="classs">
            <c:forEach items="${listclasss}" var="c">
                <option value="${c.class_id}">
                    ${c.class_name}
                </option>
            </c:forEach>
        </select>
        </td>
        </tr>
        
        <tr>
        <td>
        
      Select a Division:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <select name="division">
            <c:forEach items="${listdivision}" var="divvs">
                <option value="${divvs.division_id}">
                    ${divvs.division_name}
                </option>
            </c:forEach>
        </select>
        
        </td>
        </tr>
        <tr>
        <td align="center">
        <input type="submit" value="Submit" />
    </td>
    </tr>
    </table>
    </form>
</div>

</body>
</html>