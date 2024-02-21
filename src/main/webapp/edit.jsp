<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>    
<!DOCTYPE html>
<html>
<head>
<%@include file="all_js_css.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div  class="container">
    <%@include file="navBar.jsp" %>
    
    <br>
    <h1> This is edit page</h1>
    
    <%
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
         Session s=FactoryProvider.getFactory().openSession();
 		Transaction tx=s.beginTransaction();	
 	    Note note=(Note)s.get(Note.class, noteId);
 	    
    
    %>
    
     <form action="updateServlet" method="post">
     
     <input value="<%=note.getId() %>" name="noteId" type="hidden" />
    
  <div class="form-group" >
    <label for="title">Note Tile:</label>
    <input 
    type="text" 
    class="form-control"
     id="title"
     name="title"
      aria-describedby="emailHelp" 
      placeholder="Enter here"
      value="<%= note.getTitle() %>"
      reruired/>
    </div>
    
    
  <div class="form-group">
    <label for="exampleInputPassword1">Note Content</label>
    <textarea 
    
    class="form-control"
     id="content" 
     name="content"
     placeholder="enter your content here"
     style="height:300px;"
     
     required><%= note.getContent() %>"
     </textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Save</button>
  </div>
</form>
    
    
    
    </div>
</body>
</html>