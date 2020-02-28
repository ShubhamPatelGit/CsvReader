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

<title>Result Page</title>
</head>
<body>
	<h1>Results</h1><br><br>
	
	<h2>${doc}</h2>
	
  <div class="container">
  <table class="table table-striped">
    	<tr>
    		<c:if test="${a==1}">
    			<th>Name</th>
    		</c:if>
    		<c:if test="${b==1}">
	    		<th>Roll No.</th>
	    	</c:if>
	    	<c:if test="${c==1}">
	    		<th>Email Id</th>
	    	</c:if>
    	</tr>
    	
    	<c:forEach items="${students}" var="s">
		<tr>
			<c:if test="${a==1}">
				<td>${s.getName()}</td>
			</c:if>
			<c:if test="${b==1}">
				<td>${s.getRoll()}</td>
			</c:if>
			<c:if test="${c==1}">
				<td>${s.getEmail()}</td>
			</c:if>
		</tr>
		</c:forEach>
		
  </table>
</div>
</body>
</html>