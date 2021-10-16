<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<head>
    <title>Formularz dodawania/zmian</title>
    <link href="../../../css/style.css" rel="stylesheet" type="text/css">
</head>
</html>
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