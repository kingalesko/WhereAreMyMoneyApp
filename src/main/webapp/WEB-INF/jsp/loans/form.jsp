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
<form:form method="post" modelAttribute="loan">

    <form:hidden path="id"/>

    Nazwa banku: <form:input path="bankName" /> <br />
    <form:errors path="bankName" cssClass="error" element="div"/><br />
    Rodzaj pożyczki: <form:select path="loanCategory.id" items="${loansCategories}"
                            itemValue="id" itemLabel="name"/> <br />
    <form:errors path="loanCategory.id"/><br />
    Liczba rat pozostałych do spłaty: <form:input path="installmentsNum" /> <br />
    <form:errors path="installmentsNum"/><br />
    Kwota raty: <form:input path="installment" /> <br />
    <form:errors path="installment"/><br />
<%--    Data końca pożyczki: <form:input path="endDate" /> <br />--%>
<%--    <form:errors path="endDate"/><br />--%>
<%--    Pozostała kwota do spłaty: ${installmentSum} * ${installment} <br/>--%>
    Kogo to pożyczka? : <form:select path="familyMember.id" items="${familyMembers}"
                                   itemValue="id" itemLabel="nickName"/> <br />
    <form:errors path="familyMember.id"/><br />

    <input type="submit">

</form:form>