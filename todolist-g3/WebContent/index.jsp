<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList"%> 
    <%@ page import="com.imie.todolist.model.Person"%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/css.css" media="screen">

<title>Todo List G3</title>

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="js/setDatepicker.js"></script>
</head>
<body>

<h1>Users</h1>
<%

	ArrayList<Person> pers = (ArrayList<Person>) request.getAttribute("persons");


%>
<div style="width:800px;margin:0 auto;">
	
	  <%
	  	if( pers!=null ) {
	  		%>
	  		<table class="table table-striped table-bordered table-hover" >
			  <thead>
			    <tr>
			      <th>#</th>
			      <th>Nom</th>
			      <th>Prénom</th>
			      <th>Téléphone</th>
			      <th>Date de naissance</th>
			    </tr>
			  </thead>
			  <tbody>
	  		<%
	  		int cpt=1;
			for(Person p: pers){
			 %> 
			 <tr> 	
			 	<td><%= cpt %></td>
			 	<td><%= p.getName() %></td>
			 	<td><%= p.getFirstname() %></td>
			 	<td><%= p.getTel() %></td>
			 	<td><%= p.getBirthday() %></td>
			 </tr> <% 
			 cpt++;
			}
			
			%>
			</tbody>
			</table>
			<%
	  	}else{
	  		%> <h3>Aucune donnée</h3><%
	  	}
	  
	  %>
	    
	  

	
	<div class="well">
	  <form class="bs-example form-horizontal" id="formToDo" action="todolist" method="POST">
	    <fieldset>
	      <legend>New User</legend>
	      <div class="form-group">
	        <label for="inputFirstname" class="col-lg-2 control-label">Prénom</label>
	        <div class="col-lg-10">
	          <input class="form-control" id="inputFirstname" placeholder="Prénom" type="text" id="firstname" name="firstname" required="required">
	        </div>
	      </div>
	      <div class="form-group">
	        <label for="inputLastname" class="col-lg-2 control-label">Nom</label>
	        <div class="col-lg-10">
	          <input class="form-control" id="inputLastname" placeholder="Nom" type="text" id="lastname" name="lastname" required="required">
	        </div>
	      </div>
	     
	     <div class="form-group">
	        <label for="inputTel" class="col-lg-2 control-label">Tel</label>
	        <div class="col-lg-10">
	          <input class="form-control" id="inputTel" placeholder="Téléphone" type="tel" id="tel" name="tel" required="required">
	        </div>
	      </div>
	      
	      <div class="form-group">
	        <label for="inputBirthDate" class="col-lg-2 control-label">Date de naissance</label>
	        <div class="col-lg-10">
	          <input class="form-control datepicker" id="inputBirthDate" placeholder="Date de naissance" type="text" name="birthDate" required="required">
	        </div>
	      </div>
	      <input type="hidden" name="action" value="add"/>
	      <button class="btn btn-primary" style="float:right;" type="submit">Enregistrer</button>
	    </fieldset>
	  </form>
	</div>
</div>

     
</body>
</html>