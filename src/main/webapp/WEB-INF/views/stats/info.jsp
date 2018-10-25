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


    <div class="col s3">
        <div class="card">
            <div class="card-image">
                <img src="https://media.giphy.com/media/B7sfAn7n9xi7u/giphy.gif">
                <span class="card-title">Tematy i komentarze</span>
            </div>
            <div class="card-content">
                <h6>Mamy już <b>${topicsNumber}</b> poruszonych tematów<br>
                    Zostały one skomentowane <b>${commentsNumber}</b> razy.
                </h6>
            </div>


        </div>
    </div>

    <div class="col s3">
        <div class="card">
            <div class="card-image">
                <img src="https://media.giphy.com/media/xULlZLRGqMiXHbql3W/giphy.gif">
                <span class="card-title">Najnowszy temat</span>
            </div>
            <div class="card-content">
                <p>Najnowszy temat <b>${lastTopic.name}</b><br>Został stworzony <b>${lastTopic.created}</b><br>
                </p>
            </div>
            <div class="card-action">
                <a href="/topic/${lastTopic.id}">Przejdź do tematu</a>
            </div>
        </div>
    </div>

    <div class="col s3">
        <div class="card">
            <div class="card-image">
                <img src="https://media.giphy.com/media/ctUQZSROdSmeA/giphy.gif">
                <span class="card-title">Najpopularniejszy temat</span>
            </div>
            <div class="card-content">
                <p><b>${mostPopularTopic.name}</b> to najpopularniejszy temat na forum! <br>
                    Posiada<b> ${mostPopularTopicPostsNumber}</b> komentarzy.</p>
            </div>
            <div class="card-action">
                <a href="/topic/${mostPopularTopic.id}">Przejdź do tematu</a>
            </div>

        </div>
    </div>
    <div class="col s3">

        <div class="card">
            <div class="card-image">
                <img src="https://media.giphy.com/media/d3mlE7uhX8KFgEmY/giphy.gif">
                <span class="card-title">Najaktywniejszy user</span>
            </div>
            <div class="card-content">
                <p><b>${mostComments.nick}</b> napisał w sumie <b>${mostCommentsNumber}</b> postów! </p>
            </div>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>

</body>
</html>
