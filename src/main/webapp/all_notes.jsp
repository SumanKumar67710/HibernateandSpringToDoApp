<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.FactoryProvider" %>
 <%@page import="org.hibernate.Session" %>
 <%@page import="org.hibernate.Query" %>
 <%@page import="com.entities.*" %>
 <%@page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes: Note Taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div  class="container">
    <%@include file="navBar.jsp" %>
    <br>
    <h2>All Notes</h2>
    
    <div class="row">
    <div class="col-12">
    
    <%
    
    Session s=FactoryProvider.getFactory().openSession();
    Query q=s.createQuery("from Note");
    List<Note> list=q.list();
    for(Note note:list)
    {
    	%>
    	
   <div class="card mt-3" >
    <img class="card-img-top m-4" style="max-width:100px;" src="img/notes.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">
    <%= note.getTitle() %></h5>
    <p class="card-text">
    <%= note.getContent() %></p>
    
    <div class="container  text-center mt-2">
    <a href="deleteServlet?note_id= <%= note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id= <%= note.getId() %>" class="btn btn-primary">Update</a>
    </div>
  </div>
</div>
    	
    	
    	
    	<% 
         }
    
        s.close();
      
         %>
    
    
    </div>
    
    
    </div>
    
    
    
    
    
    
    
    </div>


</body>
</html>