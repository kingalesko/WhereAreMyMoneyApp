<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<head>
    <title>Usuwanie</title>
    <link href="../../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h2>Czy chcesz usunąć cel: ${target.targetName} ?</h2>

<form method="post">
    <input type="hidden" name="toRemoveId" value="${target.id}">
    <button type="submit" value="yes" name="confirmed">TAK</button>
    <button type="submit" value="no" name="confirmed">NIE</button>
</form>
</body>
</html>