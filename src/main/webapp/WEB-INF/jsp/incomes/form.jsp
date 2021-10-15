<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<head>
    <title>Formularz dodawania/zmian</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
</head>
</html>
<form:form method="post" modelAttribute="income">

    <form:hidden path="id"/>

    Źródło dochodu: <form:input path="name" /> <br />
    <form:errors path="name"/><br />
    Kwota dochodu: <form:input path="payment" /> <br />
    <form:errors path="payment"/><br />
    Data: <form:input type="date" path="date" /> <br />
    <form:errors path="date"/><br />
    Kogo to dochód? : <form:select path="familyMember.id" items="${familyMembers}"
                            itemValue="id" itemLabel="nickName"/> <br />
    <form:errors path="familyMember.id"/><br />

    <input type="submit">

</form:form>