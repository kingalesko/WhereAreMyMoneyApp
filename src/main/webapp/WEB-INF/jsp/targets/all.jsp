<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<h2> Lista celów </h2>

<a href="add">
    Dodaj cel
</a>

<c:forEach items="${allTargets}" var="target">
    <br />
    ----------------------------
    <br />
    Cel: ${target.targetName} <br />
   Cena: ${target.price} <br />
    <a href="edit?idToEdit=${target.id}">
        Edytuj
    </a>
    <br/>
    <a href="remove?toRemoveId=${target.id}">
        Usuń
    </a>
    <br/>

</c:forEach>