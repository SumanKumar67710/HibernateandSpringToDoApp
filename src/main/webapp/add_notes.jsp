<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
 <%@include file="all_js_css.jsp" %>
</head>
<body>

<div  class="container">
    <%@include file="navBar.jsp" %>
    <br>
    <h2> Please fill your note detail</h2>
    <br>
    
    
    <!-- This is a Form -->
    <form action="SaveNoteServlet" method="post">
    
  <div class="form-group" >
    <label for="title">Note Tile:</label>
    <input 
    type="text" 
    class="form-control"
     id="title"
     name="title"
      aria-describedby="emailHelp" 
      placeholder="Enter here"
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
     required>
     </textarea>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
    
    
    
    
    
    </div>






</body>
</html>