<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Wydatki</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
</html>
<h2> Lista wydatków tego miesiąca</h2>
<br/>
<br/>

<table>
    <thead>
    <tr>
        <td>Nazwa sklepu</td>
        <td>Kwota</td>
        <td>Data</td>
        <td>Kategoria</td>
    </tr>
    <c:set var="expTotal" value="${0}"/>
    <c:forEach items="${expensesMonth}" var="expense">
        <c:set var="expTotal" value="${expTotal + expense.expense}"/>
        <tr>
            <td> ${expense.shopName} </td>
            <td> ${expense.expense} </td>
            <td> ${expense.date} </td>
            <td> ${expense.category.name}</td>
        </tr>
    </c:forEach>
    </thead>
</table>
<br/>
<br/>
<p class="qtr" id="q1">Suma wydatków: ${expTotal}</p>
<br/><br/>
<a href="..">Powrót do strony głównej</a>
<%@ include file="../footer.jsp" %>

