<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Wydatki</title>
    <%@ include file="../header.jsp" %>
    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url value="add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj wydatek</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista wydatków</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
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
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    Suma wydatków: ${expTotal} <br/>
    <a href="..">Powrót do strony głównej</a>
</div>

<%@ include file="../footer.jsp" %>
</html>

