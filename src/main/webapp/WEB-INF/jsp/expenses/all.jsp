<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<h2> Lista wszystkich wydatków </h2>

<a href="add">
    Dodaj wydatek
</a>

<c:forEach items="${allExpenses}" var="expense">
    <br />
    ----------------------------
    <br />
    ${expense.shopName} <br />
    ${expense.expense} <br />
    ${expense.date} <br />
    ${expense.category.name} <br />

    <a href="edit?idToEdit=${expense.id}">
        Edytuj
    </a>
    <br/>
    <a href="remove?toRemoveId=${expense.id}">
        Usuń
    </a>
    <br/>

</c:forEach>