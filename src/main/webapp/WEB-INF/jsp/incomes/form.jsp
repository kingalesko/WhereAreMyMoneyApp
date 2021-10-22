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
        <h6 class="m-0 font-weight-bold text-primary">Dodaj dochód</h6>
    </div>
    <div class="card-body">
        <div class="form-group">
            <form:form method="post" modelAttribute="income">

                <form:hidden path="id"/>
            <label for="name">Źródło dochodu</label>
                <form:input path="name" class="form-control"/>
                <form:errors path="name"/><br/><br/>
            <label for="payment">Kwota dochodu</label>
                <form:input path="payment" class="form-control"/>
                <form:errors path="payment"/><br/><br/>
            <label for="date">Data(DD.MM.RRRR)</label>
                <form:input path="date" class="form-control"/>
                <form:errors path="date"/><br/><br/>
            <label for="familyMember.id">Kogo to dochód?</label>
                <form:select path="familyMember.id" items="${familyMembers}"
                             itemValue="id" itemLabel="nickName" class="form-control"/>
                <form:errors path="familyMember.id"/><br/><br/>
            <button type="submit" class="btn btn-primary">Zapisz</button>
            </form:form>
            <br/><br/>
            <a href="<c:url value="/incomesForm/list"/>"
               class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-50"></i> Lista dochodów</a>
            <br/><br/>
            <a href="..">Powrót do strony głównej</a>
            <%@ include file="../footer.jsp" %>
