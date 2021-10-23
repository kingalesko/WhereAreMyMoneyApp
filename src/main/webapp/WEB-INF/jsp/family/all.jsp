<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Członkowie rodziny</title>
    <%@ include file="../header.jsp" %>
    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <a href="<c:url value="add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i> Dodaj członka rodziny</a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Nasza rodzina</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <td><b>Członkowie rodziny</b></td>
                        <td><b>Edycja</b></td>
                        <td><b>Usuwanie</b></td>
                    </tr>

                    <tr>
                        <c:forEach items="${allFamilyMembers}" var="familyMember">
                        <td>${familyMember.nickName}</td>
                        <td><a href="edit?idToEdit=${familyMember.id}">Edytuj</a>
                        <td><a href="remove?toRemoveId=${familyMember.id}">Usuń</a></td>
                    </tr>
                    </td>
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
