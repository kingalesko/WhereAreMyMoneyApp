<h2>Czy chcesz usunąć to zobowiązanie? ${loan.name} ?</h2>

<form method="post">
    <input type="hidden" name="toRemoveId" value="${loan.id}">
    <button type="submit" value="yes" name="confirmed">TAK</button>
    <button type="submit" value="no" name="confirmed">NIE</button>
</form>