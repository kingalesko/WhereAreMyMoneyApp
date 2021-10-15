<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!doctype html>
<html lang="pl-PL">
<head>
    <title>Kredyty</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
</head>
</html>

<h2> Lista wszystkich kredytów </h2>

<a href="add">
    Dodaj zobowiązanie
</a>
<br/>
<table>
    <thead>
    <tr>
        <td>Nazwa banku</td>
        <td>Rodzaj kredytu</td>
        <td>Ilość rat pozostałych do spłaty</td>
        <td>Kwota raty</td>
        <td>Właściciel</td>
        <td>Pozostało do spłaty</td>
        <td>Edycja</td>
        <td>Usuwanie</td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <c:set var="loanTotal" value="${0}"/>
        <c:forEach items="${allLoans}" var="loan">
        <c:set var="loanTotal" value="${loanTotal + loan.installmentsNum * loan.installment}"/>
        <td>${loan.bankName} </td>
        <td>${loan.loanCategory.name} </td>
        <td>${loan.installmentsNum}</td>
        <td>${loan.installment}</td>
        <td>${loan.familyMember.nickName}</td>
        <c:choose>
            <c:when test="${loan.installmentsNum == 0}">
                <td>${loan.installment}</td>
            </c:when>
            <c:otherwise>
                <td>${loanTotal}</td>
            </c:otherwise>
        </c:choose>
    </tr>
    <td><a href="edit?idToEdit=${loan.id}">Edytuj</a></td>
    <td><a href="remove?toRemoveId=${loan.id}">Usuń</a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<br/>
<a href="..">Powrót do strony głównej</a>
