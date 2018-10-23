<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/views/footer_header/header.jspf" %>

<table>
    <tr>
        <th>Id</th>
        <th>Nick</th>
        <th>Email</th>
        <th>Utworzony</th>
        <th>Ostatnie logowanie</th>
        <th>Tematy</th>
        <th>Haslo do wywalenia</th>

    </tr>
    <c:forEach items="${users}" var="user">

        <tr>
            <td>${user.id}</td>
            <td>${user.nick}</td>
            <td>${user.email}</td>
            <td>${user.created}</td>
            <td>${user.lastLogin}</td>
            <td>${fn:length(user.topicList)}</td>
            <td>${user.password}</td>
        </tr>

    </c:forEach>

</table>

<a href="/">Dodaj komentarz</a>
<a href="/">Powrót</a>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>

</body>
</html>
