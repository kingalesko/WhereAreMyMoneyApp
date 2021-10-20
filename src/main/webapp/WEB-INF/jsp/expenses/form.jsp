<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Formularz dodawania/zmian</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<form:form method="post" modelAttribute="expenses">

    <form:hidden path="id"/>

    Nazwa sklepu: <form:input path="shopName" /> <br />
    <form:errors path="shopName"/><br />
    Total price: <form:input path="expense" /> <br />
    <form:errors path="expense"/><br />
    Data(DD.MM.RRRR): <form:input path="date" /> <br />
    <form:errors path="date"/><br />
    Kategoria: <form:select path="category.id" items="${categories}"
                         itemValue="id" itemLabel="name"/> <br />
    <form:errors path="category.id"/><br />

    <input type="submit">

</form:form>
<br/><br/>
<a href="..">Powrót do strony głównej</a>
<%@ include file="../footer.jsp" %>
