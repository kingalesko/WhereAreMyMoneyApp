<h2>Czy chcesz usunąć cel? ${target.targetName} ?</h2>

<form method="post">
    <input type="hidden" name="toRemoveId" value="${target.id}">
    <button type="submit" value="yes" name="confirmed">TAK</button>
    <button type="submit" value="no" name="confirmed">NIE</button>
</form>