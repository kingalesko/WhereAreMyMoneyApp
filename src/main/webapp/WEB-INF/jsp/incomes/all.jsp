<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<h2> Lista wszystkich dochodów </h2>

<a href="add">
    Dodaj dochód
</a>

<c:forEach items="${allIncomes}" var="income">
    <br />
    ----------------------------
    <br />
    ${income.name} <br />
    ${income.payment} <br />
    ${income.familyMember.nickName}<br/>
    <a href="edit?idToEdit=${income.id}">
        Edytuj
    </a>
    <br/>
    <a href="remove?toRemoveId=${income.id}">
        Usuń
    </a>
    <br/>

</c:forEach>