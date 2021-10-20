<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>Formularz dodawania/zmian</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<form:form method="post" modelAttribute="familyMember">

    <form:hidden path="id"/>

    Nick Name: <form:input path="nickName" /> <br />
    <form:errors path="nickName"/><br />
    <input type="submit">

</form:form>
<br/><br/>
<a href="..">Powrót do strony głównej</a>
<%@ include file="../footer.jsp" %>
