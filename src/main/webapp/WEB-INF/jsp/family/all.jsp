<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<h2> Lista wszystkich członków rodziny </h2>

<a href="add">
    Dodaj członka rodziny
</a>

<c:forEach items="${allFamilyMembers}" var="familyMember">
    <br />
    ----------------------------
    <br />
    ${familyMember.nickName} <br />

    <a href="edit?idToEdit=${familyMember.id}">
        Edytuj
    </a>
    <br/>
    <a href="remove?toRemoveId=${familyMember.id}">
        Usuń
    </a>
    <br/>

</c:forEach>
