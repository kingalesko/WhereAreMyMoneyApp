<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<form:form method="post" modelAttribute="familyMember">

    <form:hidden path="id"/>

    Nick Name: <form:input path="nickName" /> <br />
    <form:errors path="nickName"/><br />
    <input type="submit">

</form:form>