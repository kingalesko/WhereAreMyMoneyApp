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
        <h6 class="m-0 font-weight-bold text-primary">Dodaj kredyt</h6>
    </div>
    <div class="card-body">
        <div class="form-group">
            <form:form method="post" modelAttribute="loan">

                <form:hidden path="id"/>
            <label for="bankName">Nazwa banku</label>
                <form:input path="bankName" class="form-control"/>
                <form:errors path="bankName"/><br/><br/>
            <label for="loanCategory.id">Rodzaj pożyczki</label>
                <form:select path="loanCategory.id" items="${loansCategories}"
                             itemValue="id" itemLabel="name" class="form-control"/>
                <form:errors path="loanCategory.id"/><br/><br/>
            <label for="installmentsNum">Liczba rat pozostałych do spłaty</label>
                <form:input path="installmentsNum" class="form-control"/>
                <form:errors path="installmentsNum"/><br/><br/>
            <label for="installment">Kwota raty</label>
                <form:input path="installment" class="form-control"/>
                <form:errors path="installment"/><br/><br/>
            <label for="familyMember.id">Kogo to pożyczka?</label>
                <form:select path="familyMember.id" items="${familyMembers}"
                             itemValue="id" itemLabel="nickName" class="form-control"/>
                <form:errors path="familyMember.id"/><br/><br/>
            <button type="submit" class="btn btn-primary">Zapisz</button>
            </form:form>
            <br/><br/>
            <a href="<c:url value="/loansForm/list"/>"
               class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                <i class="fas fa-download fa-sm text-white-50"></i> Lista kredytów</a>
            <br/><br/>
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <a href="<c:url value=".."/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                        <i class="fas fa-download fa-sm text-white-50"></i> Powrót do strony głównej </a>
                </div>            <%@ include file="../footer.jsp" %>
