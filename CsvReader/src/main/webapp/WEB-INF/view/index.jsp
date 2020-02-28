<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Home Page</title>
</head>
<body>
	<h1>Student Data</h1><br><br>
	
	<div class="container">
		<form action="result">
		<div class="form-group">
		
			<label>Select document:</label>
			<select id="doc" name="doc" class="form-control">
				<c:forEach items="${allFiles}" var="file">
			        <option value="${file}">${file}</option>
			    </c:forEach>
			</select><br><br>
			<label>Select fields:</label><br>
				Name:<input type="checkbox" id="sName" name="sName" value="sName" >
				Roll No.:<input type="checkbox" id="sRoll" name="sRoll" value="sRoll" >
				Email Id:<input type="checkbox" id="sEmail" name="sEmail" value="sEmail" >
			<br><br>
			
			<button class= "button" type= "submit" value= "Submit">Submit</button>
		</div>
		</form>
	</div>
</body>
</html>