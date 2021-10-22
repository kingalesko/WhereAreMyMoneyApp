<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>Usuwanie</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<h3>Czy chcesz usunąć ten dochód: ${income.name} ?</h3>
<br/><br/>
<div class="form-group">
    <form method="post">
        <input type="hidden" name="toRemoveId" value="${income.id}"><br/><br/>
        <button type="submit" value="yes" name="confirmed" class="btn btn-primary">TAK</button>
        <button type="submit" value="no" name="confirmed" class="btn btn-primary">NIE</button>
        <br/><br/>
    </form>
    <br/><br/>
    <a href="..">Powrót do strony głównej</a>
    <%@ include file="../footer.jsp" %>
