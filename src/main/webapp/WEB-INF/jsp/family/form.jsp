<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<head>
    <title>Formularz dodawania/zmian</title>
    <link href="../../../css/style.css" rel="stylesheet" type="text/css">
</head>
</html>
<form:form method="post" modelAttribute="familyMember">

    <form:hidden path="id"/>

    Nick Name: <form:input path="nickName" /> <br />
    <form:errors path="nickName"/><br />
    <input type="submit">

</form:form>
<br/><br/>
<a href="..">Powrót do strony głównej</a>