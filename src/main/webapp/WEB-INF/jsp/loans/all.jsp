<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Kredyty</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url value="add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj nowy kredyt</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista kredytów</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <td><b>Nazwa banku</b></td>
                        <td><b>Rodzaj kredytu</b></td>
                        <td><b>Ilość rat pozostałych do spłaty</b></td>
                        <td><b>Kwota raty</b></td>
                        <td><b>Właściciel</b></td>
                        <td><b>Pozostało do spłaty</b></td>
                        <td><b>Edycja</b></td>
                        <td><b>Usuwanie</b></td>
                    </tr>
                    <tr>
                        <c:set var="loanTotal" value="${0}"/>
                        <c:forEach items="${allLoans}" var="loan">
                        <c:set var="loanTotal" value="${loan.installmentsNum * loan.installment}"/>
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
                        <td><a href="edit?idToEdit=${loan.id}">Edytuj</a></td>
                        <td><a href="remove?toRemoveId=${loan.id}">Usuń</a></td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    <a href="..">Powrót do strony głównej</a>
</div>
<%@ include file="../footer.jsp" %>

