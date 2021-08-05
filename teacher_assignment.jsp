<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  background-color: ORANGE;
}
</style>

</head>
<body>

<div align="center">
    <h2>Teacher Assinnment</h2>
    <form action="add_teacherassignmentclass" method="get">
        <table>
        <tr>
        <td>
        Teacher Assignment Id:<input type="text" name="tai">
        </td>
        </tr>
		<tr>
		<td>
		Select The Teacher:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <select name="teacher">
            <c:forEach items="${listteacher}" var="c1">
                <option value="${c1.teacher_id}">
                    ${c1.teacher_name}
                </option>
            </c:forEach>
        </select>
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