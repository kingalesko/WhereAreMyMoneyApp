<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Dochody</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url value="add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj dochód</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista dochodów</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <td><b>Źródło dochodu</b></td>
                        <td><b>Wysokość wynagrodzenia</b></td>
                        <td><b>Data wpływu</b></td>
                        <td><b>Kogo wynagrodzenie</b></td>
                        <td><b>Edycja</b></td>
                        <td><b>Usuwanie</b></td>
                    </tr>
                    <tr>
                        <c:set var="incomesTotal" value="${0}"/>
                    <c:forEach items="${allIncomes}" var="income">
                        <tr>
                            <c:set var="incomesTotal" value="${incomesTotal + income.payment}"/>
                            <td> ${income.name}</td>
                            <td>${income.payment}</td>
                            <td>${income.date}</td>
                            <td> ${income.familyMember.nickName}</td>
                            <td><a href="edit?idToEdit=${income.id}">Edytuj</a></td>
                            <td><a href="remove?toRemoveId=${income.id}">Usuń</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    <p class="qtr" id="q1">Suma dochodów: ${incomesTotal}</p>
    <br/>
    <a href="..">Powrót do strony głównej</a>
</div>

<%@ include file="../footer.jsp" %>
