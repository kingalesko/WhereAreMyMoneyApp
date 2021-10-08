<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form:form method="post" modelAttribute="expense">

    <form:hidden path="id"/>

    Nazwa sklepu: <form:input path="shopName" /> <br />
    <form:errors path="shopName"/><br />
    Total price: <form:input path="expense" /> <br />
    <form:errors path="expense"/><br />
    Data: <form:input path="date" /> <br />
    <form:errors path="date"/><br />
    Kategoria: <form:select path="category.id" items="${categories}"
                         itemValue="id" itemLabel="name"/> <br />
    <form:errors path="category.id"/><br />

    <input type="submit">

</form:form>