<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Wydatki</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<div class="container-fluid">
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Lista wydatków tego miesiąca</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <td><b>Nazwa sklepu</b></td>
                    <td><b>Kwota</b></td>
                    <td><b>Data</b></td>
                    <td><b>Kategoria</b></td>
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
            </table>
        </div>
    </div>
</div>
    Suma wydatków: ${expTotal} <br/><br/>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url value=".."/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Powrót do strony głównej </a></div></div>
<%@ include file="../footer.jsp" %>

