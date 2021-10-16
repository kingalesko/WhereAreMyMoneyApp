<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="pl-PL">
<head>
    <title>Usuwanie</title>
    <link href="../../../css/style.css" rel="stylesheet" type="text/css">
</head>
</html>
<h2>Czy chcesz usunąć ten dochód: ${income.name} ?</h2>

<form method="post">
    <input type="hidden" name="toRemoveId" value="${income.id}">
    <button type="submit" value="yes" name="confirmed">TAK</button>
    <button type="submit" value="no" name="confirmed">NIE</button>
</form>
<br/><br/>
<a href="..">Powrót do strony głównej</a>