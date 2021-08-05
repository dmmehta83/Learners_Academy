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
<title>Subject List(Class Wise)</title>
<style>
body {
  background-color: ORANGE;
}
</style>

</head>
<body>

<% 

int class_id =Integer.parseInt(request.getParameter("sclass"));
int division_id =Integer.parseInt(request.getParameter("sdivision"));




try  {
        	String database_URL ="jdbc:mysql://localhost/ims";
			// Database credentials
			String userName ="root";
			String password ="";
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect =
					DriverManager.getConnection(database_URL,
					userName, password);
        	//String sql = "select subject_assignment_master.subject_id,subject_master.subject_name from subject_master,subject_assignment_master where subject_master.subject_id=subject_assignment_master.subject_id and  class_id="+class_id+"and division_id="+division_id;
            //Statement statement = connect.createStatement();
            PreparedStatement st=connect.prepareStatement("select subject_assignment_master.subject_id,subject_master.subject_name from subject_master,subject_assignment_master where subject_master.subject_id=subject_assignment_master.subject_id and class_id=? and division_id=?");
			st.setInt(1, class_id);
			st.setInt(2, division_id);
			ResultSet result=st.executeQuery();
            
            
             
                 
            
            
            
            out.println("<table align=center border=1>");
            out.println("<tr >");
            out.println("<td colspan=2>");
            out.println("<h1>List of Subjects</h1>"); 
            
            out.println("</td>");
            out.println("</tr>");
           
            out.println("<tr >");
            out.println("<td>");
            out.println("Class id"); 
            
            out.println("</td>");
            out.println("<td>");
            out.println(class_id); 
            
            out.println("</td>");
           
            out.println("</tr>");
           
            out.println("<tr >");
            out.println("<td>");
            out.println("Division id"); 
            
            out.println("</td>");
            out.println("<td>");
            out.println(division_id); 
            
            out.println("</td>");
           
            out.println("</tr>");
          
            out.println("<tr >");
            out.println("<td>");
            out.println("Subject id"); 
            
            out.println("</td>");
            
             out.println("<td>");
            out.println("Subject  Name"); 
            
            out.println("</td>");
            
            
            out.println("</tr>");
          
            while (result.next()) {
               
           	int subject_id = result.getInt(1);
               String subject_name = result.getString(2);
               out.println("<tr>");
               out.println("<td>");
               
               out.print(subject_id);
               out.println("</td>");
            
               out.println("<td>");
               
               out.print(subject_name);
               out.println("</td>");
               out.println("</tr>");
                     
               
           }          
            out.println("</table>");
            out.println("<a href=admin>BACK</a>");
             
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        
   
    %>



</body>
</html>