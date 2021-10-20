<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>Usuwanie</title>
    <%@ include file="../header.jsp" %>

    <link href="<c:url value="../../../theme/css/sb-admin-2.css"/>" rel="stylesheet">
</head>
<body>
<h2>Czy chcesz usunąć cel?</h2>

<form method="post">
    <input type="hidden" name="toRemoveId" value="${target.id}">
    <button type="submit" value="yes" name="confirmed">TAK</button>
    <button type="submit" value="no" name="confirmed">NIE</button>
</form>
</body>
<br/><br/>
<a href="..">Powrót do strony głównej</a>
<%@ include file="../footer.jsp" %>
