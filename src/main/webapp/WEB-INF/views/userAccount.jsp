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
                <span class="card-title">Twoje Dane</span>
                <p>
                    <b>Login</b>: ${loggedInUser.nick}<br>
                    <b>Email</b>: ${loggedInUser.email}<br>
                    <b>Konto od</b>: ${loggedInUser.created}<br>
                    <b>Podpis</b>: ${loggedInUser.signature}<br>

                </p>
            </div>
            <div class="card-action">
                <a href="#">Dodaj opis</a>
                <a href="#">Twoje tematy</a>
                <a href="#comment">Twoje komentarze</a>
            </div>
        </div>
    </div>
</div>

<ul class="collection with-header">
    <li class="collection-header"><h4>Twoje tematy</h4></li>
    <a href="#!" class="collection-item">Alvin</a>
    <a href="#!" class="collection-item active">Alvin</a>
    <a href="#!" class="collection-item">Alvin</a>
    <a href="#!" class="collection-item">Alvin</a>
</ul>

<ul class="collection with-header">
    <li class="collection-header"><h4>Twoje komentarze</h4></li>
    <li class="collection-item">Alvin</li>
    <li class="collection-item">Alvin</li>
    <li class="collection-item">Alvin</li>
    <li class="collection-item">Alvin</li>
</ul>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
