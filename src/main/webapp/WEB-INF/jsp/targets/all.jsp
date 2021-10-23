<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Cele</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>

<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url value="add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj cel</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista celów</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <td><b>Cel</b></td>
                        <td><b>Cena</b></td>
                        <td><b>Edycja</b></td>
                        <td><b>Usuwanie</b></td>
                    </tr>
                    <tr>
                        <c:forEach items="${allTargets}" var="target">
                        <td>${target.targetName}</td>
                        <td>${target.price}</td>
                        <td><a href="edit?idToEdit=${target.id}">Edytuj</a></td>
                        <td><a href="remove?toRemoveId=${target.id}">Usuń</a></td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url value=".."/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Powrót do strony głównej </a>
    </div></div>
<%@ include file="../footer.jsp" %>

