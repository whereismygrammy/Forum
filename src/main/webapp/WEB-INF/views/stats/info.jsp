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
                <img src="https://1kabswnt2ua3ivl0cuqv2f17-wpengine.netdna-ssl.com/wp-content/uploads/2017/12/pexels-photo-313690-1255x941.jpeg">
                <span class="card-title">Tematy i komentarze</span>
            </div>
            <div class="card-content">
                <p>Mamy już ${topicsNumber} poruszonych tematów<br>
                    Zostały one skomentowane ${commentsNumber} razy.
                </p>
            </div>


        </div>
    </div>

    <div class="col s3">
        <div class="card">
            <div class="card-image">
                <img src="https://www.gannett-cdn.com/presto/2018/09/12/USAT/93066fb3-e611-4cba-9976-a8dfe9b3270f-AP_Apple_Showcase.JPG?quality=10">
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
                <img src="https://pixel.nymag.com/imgs/daily/vulture/2012/09/04/04-gangnam-style.w330.h330.jpg">
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
                <img src="data:image/jpeg;base64,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">
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
