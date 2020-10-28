<%@ page language="java" contentType="text/html; charset=windows-1256"
 pageEncoding="windows-1256"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Modifier un Movie</title>
</head>
<body>
<form action="updateMoviet" method="post">
<pre>
id : <input type="text" name="idMovie" value="${Movie.idMovie}">
nom :<input type="text" name="nomMovie" value="${Movie.nomMovie}">
prix :<input type="text" name="prixMovie" value="${Movie.prixMovie}">
Date création :
 <fmt:formatDate pattern="yyyy-MM-dd" value="${movie.dateCreation}"
var="formatDate" />
 <input type="date" name="date" value="${formatDate}"></input>
<input type="submit" value="Modifier">
</pre>
</form>
<br/>
<br/>
<a href="ListeProduits">Liste Movies</a>
</body>
</html>