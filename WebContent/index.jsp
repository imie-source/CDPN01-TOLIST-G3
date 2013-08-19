<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/css.css" media="screen">

<title>Insert title here</title>

    <link rel="stylesheet" href="./bootstrap.min.css" media="screen">
    
</head>
<body>

<h1>Users</h1>
<div style="width:800px;margin:0 auto;">
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
	    <tr>
	      <td>1</td>
	      <td>Jon</td>
	      <td>Rambo</td>
	      <td>01-23-55-44-78</td>
	      <td>01/01/1998</td>
	    </tr>
	  </tbody>
	</table>
	
	<div class="well">
	  <form class="bs-example form-horizontal" action="new" method="POST">
	    <fieldset>
	      <legend>New User</legend>
	      <div class="form-group">
	        <label for="inputFirstname" class="col-lg-2 control-label">Prénom</label>
	        <div class="col-lg-10">
	          <input class="form-control" id="inputFirstname" placeholder="Prénom" type="text" name="firstname">
	        </div>
	      </div>
	      <div class="form-group">
	        <label for="inputLastname" class="col-lg-2 control-label">Nom</label>
	        <div class="col-lg-10">
	          <input class="form-control" id="inputLastname" placeholder="Nom" type="text" name="lastname">
	        </div>
	      </div>
	     
	     <div class="form-group">
	        <label for="inputTel" class="col-lg-2 control-label">Tel</label>
	        <div class="col-lg-10">
	          <input class="form-control" id="inputTel" placeholder="Téléphone" type="text" name="tel">
	        </div>
	      </div>
	      
	      <div class="form-group">
	        <label for="inputLastname" class="col-lg-2 control-label">Date de naissance</label>
	        <div class="col-lg-10">
	          <input class="form-control" id="inputBirthDate" placeholder="Date de naissance" type="text" name="birthDate">
	        </div>
	      </div>
	      <button class="btn btn-primary" style="float:right;" type="submit">Enregistrer</button>
	    </fieldset>
	  </form>
	</div>
</div>

     
</body>
</html>