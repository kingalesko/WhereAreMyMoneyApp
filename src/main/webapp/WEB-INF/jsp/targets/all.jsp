<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<h2> Lista celów </h2>

<a href="add">
    Dodaj cel
</a>

<table>
<thead>
<tr>
    <td>Cel</td>
    <td>Cena</td>
</tr>
</thead>
<tbody><tr>
<c:forEach items="${allTargets}" var="target">
    <td>${target.targetName}</td>
    <td>${target.price}</td></tr>
</c:forEach>

</tbody>
</table>
    <a href="edit?idToEdit=${target.id}">
        Edytuj
    </a>
    <br/>
    <a href="remove?toRemoveId=${target.id}">
        Usuń
    </a>
    <br/>