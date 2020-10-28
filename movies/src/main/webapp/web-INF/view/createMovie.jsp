<%@ page language="java" contentType="text/html; charset=windows-1256"pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Créer un movie</title>
</head>
<body>
<form action="saveMovie" method="post">
<pre>
nom : <input type="text" name="nomMovie">
prix : <input type="text" name="prixMovie">
date création : <input type="date" name="date">
<input type="submit" value="ajouter">
</pre>
</form>
${msg}
<br/>
<br/>
<a href="ListeMovies">Liste Movie</a>
</body>
</html>