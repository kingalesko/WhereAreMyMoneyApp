<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<head>
    <title>Dochody</title>
    <link href="../../../theme/css/style.css" rel="stylesheet" type="text/css">
</head>
</html>
<h2> Lista wszystkich dochodów </h2>

<a href="add">
    Dodaj dochód
</a>
<br/>

<table>
<thead>
<tr>
    <td>Źródło dochodu</td>
    <td>Wysokość wynagrodzenia</td>
    <td>Kogo wynagrodzenie</td>
    <td>Edycja</td>
    <td>Usuwanie</td>
</tr>
</thead>
<tbody><tr>
    <c:set var="incomesTotal" value="${0}"/>
<c:forEach items="${allIncomes}" var="income"><tr>
    <c:set var="incomesTotal" value="${incomesTotal + income.payment}"/>
   <td> ${income.name}</td>
   <td>${income.payment}</td>
  <td>  ${income.familyMember.nickName}</td>
    <td><a href="edit?idToEdit=${income.id}">Edytuj</a></td>
    <td><a href="remove?toRemoveId=${income.id}">Usuń</a></td></tr>
</c:forEach>
    </tbody>
    </table><br/>
Suma dochodów: ${incomesTotal}
<br/>
<a href="..">Powrót do strony głównej</a>
