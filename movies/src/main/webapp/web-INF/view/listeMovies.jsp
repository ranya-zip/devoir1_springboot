<%@ page language="java" contentType="text/html; charset=windows-1256"
 pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Liste Movies</title>
</head>
<body>
 <h1 >
 Liste des Movies
 </h1>
 <table >
 <tr>
 <th>ID</th><th>Nom movies</th><th>Prix</th><th>Date
Création</th><th>Suppression<th>Edition</th>
 </tr>
 <c:forEach items="${produits}" var="m">
 <tr>
 <td>${m.idMovies }</td>
 <td>${m.nomMovies }</td>
 <td>${m.prixMovies }</td>
 <td><fmt:formatDate pattern="dd/MM/yyyy"
value="${m.dateCreation}" /></td>
 <td><a onclick="return confirm('Etes-vous sûr ?')"
href="supprimerMovies?id=${m.idMovies }">Supprimer</a></td>
 <td><a href="modifierMovies?id=${m.idMovies }">Edit</a></td>
 </tr>
 </c:forEach>
 </table>
</body>
</html>