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


<div class="row">
    <div class="col s6 offset-s3">
        <div class="card blue-grey darken-1">
            <div class="card-content white-text">
                <div class="row">
                    <div class="col s9">


                        <span class="card-title">${loggedInUser.nick} to twoje dane</span>
                        <p>
                            <b>Login</b>: ${loggedInUser.nick}<br>
                            <b>Email</b>: ${loggedInUser.email}<br>
                            <b>Id</b>: ${loggedInUser.id}<br>
                            <b>Konto od</b>: ${loggedInUser.created}<br>
                            <b>Twoje tematy</b>: ${fn:length(topics)}<br>
                            <b>Twoje komentarze</b>: ${fn:length(comments)}<br>
                            <b>Podpis</b>: ${loggedInUser.signature}<br>

                        </p>
                    </div>
                    <div class="center-align">
                        <br>
                        <br>
                        <br>
                        <div class="col s2">
                            <img height="100" width="100" class="circle responsive-img"
                                 src="${loggedInUser.imgUrl}">
                        </div>
                    </div>
                </div>
            </div>

            <div class="card-action">
                <a href="/user/edit">Zmień podpis</a>
                <a href="/user/editImg">Zmień avatar</a>
                <a href="#topics">Twoje tematy</a>
                <a href="#comments">Twoje komentarze</a>
            </div>
        </div>
    </div>


</div>

<div class="row">

    <c:if test="${fn:length(topics) != 0}">
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
                            <td><a href="/topic/${topic.id}">Przejdz do tematu</a></td>

                        </tr>
                    </c:forEach>

                    </tbody>
                </table>

            </div>
        </div>
    </c:if>

    <c:if test="${fn:length(comments) != 0}">

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
                            <td><a href="/topic/${comment.topic.id}#${comment.id}">Przejdz do komentarza</a></td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </c:if>
</div>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
