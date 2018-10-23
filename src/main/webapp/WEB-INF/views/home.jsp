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
        <th>Temat</th>
        <th>Ostatnia aktualizacja</th>
        <th>Przez</th>
        <th>Przejdz do tematu</th>


    </tr>
    <c:forEach items="${topics}" var="topic">
        <tr>
            <td>${topic.name}</td>
            <td>${topic.updated}</td>
            <td>Dorobić</td>
            <td><a href="/topic/${topic.id}">Przejdź</a></td>
        </tr>
    </c:forEach>

</table>

TO JEST ID USERA --->>> ${userId}

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
