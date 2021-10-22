<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Formularz dodawania/zmian</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<div class="d-sm-flex align-items-center justify-content-between mb-4">
</div>
<div class="container-fluid">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Dodaj cel</h6>
    </div>
    <div class="card-body">
        <div class="form-group">
            <form:form method="post" modelAttribute="target">
                <form:hidden path="id"/>
            <label for="targetName">Cel</label>
                <form:input path="targetName" class="form-control"/>
                <form:errors path="targetName"/><br/><br/>
            <label for="price">Cena</label>
                <form:input path="price" class="form-control"/>
                <form:errors path="price"/><br/><br/>
            <button type="submit" class="btn btn-primary">Zapisz</button>
            </form:form>
            <br/><br/>
            <a href="<c:url value="/targetForm/list"/>"
               class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-50"></i> Lista celów</a>
            <br/><br/>
            <a href="..">Powrót do strony głównej</a>
            <%@ include file="../footer.jsp" %>
