<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>Formularz dodawania/zmian</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<div class="d-sm-flex align-items-center justify-content-between mb-4">
</div>
<div class="container-fluid">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Dodaj członka rodziny</h6>
    </div>
    <div class="card-body">
        <div class="form-group">
            <form:form method="post" modelAttribute="familyMember">
                <form:hidden path="id"/>
            <label for="nickName">Nick</label>
                <form:input path="nickName" class="form-control"/>
                <form:errors path="nickName"/><br/><br/>
            <button type="submit" class="btn btn-primary">Zapisz</button>
            </form:form>
            <br/><br/>
            <a href="<c:url value="/familyForm/list"/>"
               class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-50"></i> Lista członków rodziny</a>
            <br/><br/>
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <a href="<c:url value=".."/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                        <i class="fas fa-download fa-sm text-white-50"></i> Powrót do strony głównej </a>
                </div>            <%@ include file="../footer.jsp" %>
