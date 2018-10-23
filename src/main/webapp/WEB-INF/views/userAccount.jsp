<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/views/footer_header/header.jspf" %>


<div class="row">

    <div class="col s4 offset-s4">
        <div class="card blue-grey darken-1">
            <div class="card-content white-text">
                <span class="card-title">${loggedInUser.nick} to twoje dane</span>
                <p>
                    <b>Login</b>: ${loggedInUser.nick}<br>
                    <b>Email</b>: ${loggedInUser.email}<br>
                    <b>Id</b>: ${loggedInUser.id}<br>
                    <b>Konto od</b>: ${loggedInUser.created}<br>
                    <b>Twoje tematy</b>: 2<br>
                    <b>Twoje komentarze</b>: 2<br>
                    <b>Uzyskane lajki</b>: 2<br>
                    <b>Podpis</b>: ${loggedInUser.signature}<br>

                </p>
            </div>
            <div class="card-action">
                <a href="#">Edytuj dane</a>
                <a href="#topics">Twoje tematy</a>
                <a href="#comments">Twoje komentarze</a>
            </div>
        </div>
    </div>


</div>

<div class="row">
    <div class="col s8 offset-s2">
        <div class="card-panel grey lighten-5 z-depth-1">

            <h5>Twoje tematy</h5>
            <table class="highlight">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Nazwa</th>
                    <th>Ostatni komentarz</th>
                    <th></th>
                </tr>
                </thead>

                <tbody>

                <c:forEach items="${topics}" var="topic">
                    <tr>
                        <td>${topic.id}</td>
                        <td>${topic.name}</td>
                        <td>${topic.updated}</td>
                        <td><a href="${topic.id}">Przejdz do tematu</a></td>

                    </tr>
                </c:forEach>

                </tbody>
            </table>

        </div>
    </div>

    <div class="col s8 offset-s2">
        <div class="card-panel grey lighten-5 z-depth-1">
            <h5>Twoje komentarze</h5>
            <table class="highlight">
                <thead>
                <tr>
                    <th>Temat</th>
                    <th>Treść komentarza</th>
                    <th>Dodano</th>
                    <th>Ostatnia edycja tematu</th>
                    <th></th>
                </tr>
                </thead>

                <tbody>

                <c:forEach items="${comments}" var="comment">
                    <tr>
                        <td>${comment.topic.name}</td>
                        <td>${comment.content}</td>
                        <td>${comment.updated}</td>
                        <td>${comment.topic.updated}</td>
                        <td><a href="${comment.id}">Przejdz do tematu</a></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
