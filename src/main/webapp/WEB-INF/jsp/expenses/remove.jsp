<h2>Czy chcesz usunąć ten wydatek? ${expense.shopName} ?</h2>

<form method="post">
    <input type="hidden" name="toRemoveId" value="${expense.id}">
    <button type="submit" value="yes" name="confirmed">TAK</button>
    <button type="submit" value="no" name="confirmed">NIE</button>
</form>