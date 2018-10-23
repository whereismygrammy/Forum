<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/views/footer_header/header.jspf" %>

<table>
    <tr>
        <th>Temat: ${topic.name}</th>
        <th>Stworzony: ${topic.created}</th>
        <th>Autor: ${topic.user.nick}</th>
        <th>Ostatnia zmiana: ${topic.updated}</th>
    </tr>

    <tr>
        <th>${topic.content}</th>
        <th></th>
        <th></th>
        <th></th>
    </tr>
</table>


<c:forEach items="${comments}" var="comment">
    ${comment.content}
    ${comment.id}
    ${comment.created}
</c:forEach>



<a href="/">Powrót</a>
<a href="/">Dodaj komentarz</a>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
