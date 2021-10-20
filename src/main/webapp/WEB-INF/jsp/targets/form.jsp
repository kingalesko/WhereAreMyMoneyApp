<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Formularz dodawania/zmian</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<form:form method="post" modelAttribute="target">

    <form:hidden path="id"/>

    Cel: <form:input path="targetName" /> <br />
    <form:errors path="targetName"/><br />
    Cena: <form:input path="price" /> <br />
    <form:errors path="price"/><br />

    <input type="submit">

</form:form>
<br/><br/>
<a href="..">Powrót do strony głównej</a>
<%@ include file="../footer.jsp" %>
