<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!doctype html>
<html lang="pl-PL">
<head>
    <title>Cele</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
</head>
</html>

<h2> Lista celów </h2>

<a href="add">
    Dodaj cel
</a>
<br/>
<table>
<thead>
<tr>
    <td>Cel</td>
    <td>Cena</td>
    <td>Edycja</td>
    <td>Usuwanie</td>
</tr>
</thead>
<tbody><tr>
<c:forEach items="${allTargets}" var="target">
    <td>${target.targetName}</td>
    <td>${target.price}</td></tr>
<td><a href="edit?idToEdit=${target.id}">Edytuj</a></td>
<td><a href="remove?toRemoveId=${target.id}">Usuń</a></td></tr>
</c:forEach>
</tbody>
</table>
<br/>
<a href="..">Powrót do strony głównej</a>