<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Formularz dodawania/zmian</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>

<form:form method="post" modelAttribute="income">

    <form:hidden path="id"/>

    Źródło dochodu: <form:input path="name" /> <br />
    <form:errors path="name"/><br />
    Kwota dochodu: <form:input path="payment" /> <br />
    <form:errors path="payment"/><br />
    Data(DD.MM.RRRR): <form:input path="date" /> <br />
    <form:errors path="date"/><br />
    Kogo to dochód? : <form:select path="familyMember.id" items="${familyMembers}"
                            itemValue="id" itemLabel="nickName"/> <br />
    <form:errors path="familyMember.id"/><br />

    <input type="submit">

</form:form>
<br/><br/>
<a href="..">Powrót do strony głównej</a>
<%@ include file="../footer.jsp" %>
