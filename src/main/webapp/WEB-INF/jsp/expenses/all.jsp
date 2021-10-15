<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<head>
    <title>Wydatki</title>
    <link href="../../../theme/css/style.css" rel="stylesheet" type="text/css">
</head>
</html>
<h2> Lista wszystkich wydatków </h2>

<a href="add">
    Dodaj wydatek
</a>
<br/>
<table>
    <thead>
    <tr>
        <td>Nazwa sklepu</td>
        <td>Kwota</td>
        <td>Data</td>
        <td>Kategoria</td>
        <td>Edycja</td>
        <td>Usuwanie</td>
    </tr>
    <c:set var="expTotal" value="${0}"/>
    <c:forEach items="${allExpenses}" var="expense">
        <c:set var="expTotal" value="${expTotal + expense.expense}"/>
        <tr>
            <td> ${expense.shopName} </td>
            <td> ${expense.expense} </td>
            <td> ${expense.date} </td>
            <td> ${expense.category.name}</td>
            <td><a href="edit?idToEdit=${expense.id}">Edytuj</a></td>
            <td><a href="remove?toRemoveId=${expense.id}">Usuń</a></td>
        </tr>
        </tr>
    </c:forEach>
    </thead>
</table>
<br/>
Suma wydatków: ${expTotal}
<br/>
<a href="..">Powrót do strony głównej</a>
