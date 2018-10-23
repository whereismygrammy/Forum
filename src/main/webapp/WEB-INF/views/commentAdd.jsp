<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/views/footer_header/header.jspf" %>



<form:form method="post" modelAttribute="comment">

    Imię : <br><form:input type="text" path="firstName"/><br>
    <form:errors path="firstName"/><br>

    Nazwisko : <br><form:input type="text" path="lastName"/><br>
    <form:errors path="lastName"/><br>

    Email : <br><form:input type="text" path="email"/><br>
    <form:errors path="email"/><br>

    <input type="submit"/>

</form:form>
<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>

</body>
</html>
ile cie