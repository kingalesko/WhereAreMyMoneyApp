<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<head>
    <title>Formularz dodawania/zmian</title>
    <link href="../../../theme/css/style.css" rel="stylesheet" type="text/css">
</head>
</html>
<form:form method="post" modelAttribute="target">

    <form:hidden path="id"/>

    Cel: <form:input path="targetName" /> <br />
    <form:errors path="targetName"/><br />
    Cena: <form:input path="price" /> <br />
    <form:errors path="price"/><br />

    <input type="submit">

</form:form>