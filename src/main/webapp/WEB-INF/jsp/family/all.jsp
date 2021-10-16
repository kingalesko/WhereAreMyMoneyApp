<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<link href="../../../css/style.css" rel="stylesheet" type="text/css">

<head>
    <title>Członkowie rodziny</title>
</head>
<h2> Lista wszystkich członków rodziny </h2>
<br/>
<a href="add">
    Dodaj członka rodziny
</a>
<br/><br/>
<table>
<thead>
<tr>
    <td>Członkowie rodziny</td>
    <td>Edycja</td>
    <td>Usuwanie</td>
</tr>
</thead>
<tbody><tr>
<c:forEach items="${allFamilyMembers}" var="familyMember">
    <td>${familyMember.nickName}</td>
<td><a href="edit?idToEdit=${familyMember.id}">Edytuj</a></td>
<td><a href="remove?toRemoveId=${familyMember.id}">Usuń</a></td></tr>
</c:forEach>
    </tbody>
    </table>
<br/><br/>
<a href="..">Powrót do strony głównej</a>

</html>
