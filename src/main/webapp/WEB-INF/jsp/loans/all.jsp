<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<h2> Lista wszystkich kredytów </h2>

<a href="add">
    Dodaj zobowiązanie
</a>

<c:forEach items="${allLoans}" var="loan">
    <br />
    ----------------------------
    <br />
    ${loan.bankName} <br />
    ${loan.loanCategory.name} <br />
    ${loan.installmentsNum}<br/>
    ${loan.installment}<br/>
<%--    ${loan.endDate}<br/>--%>
<%--   Pozostało do spłaty: ${loan.sumOfTheLoan}<br/>--%>
   ${loan.familyMember.nickName}<br/>
    <a href="edit?idToEdit=${loan.id}">
        Edytuj
    </a>
    <br/>
    <a href="remove?toRemoveId=${loan.id}">
        Usuń
    </a>
    <br/>

</c:forEach>