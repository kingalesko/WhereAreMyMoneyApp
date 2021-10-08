<h2>Czy chcesz usunąć ten dochód? ${income.name} ?</h2>

<form method="post">
    <input type="hidden" name="toRemoveId" value="${income.id}">
    <button type="submit" value="yes" name="confirmed">TAK</button>
    <button type="submit" value="no" name="confirmed">NIE</button>
</form>