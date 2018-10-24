<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/views/footer_header/header.jspf" %>

<div class="row">
    <div class="col s8 offset-s2">
        <div class="card-panel grey lighten-5 z-depth-1">
            <div class="col s2">
                <br>
                <center><img height="80" width="80" class="circle responsive-img" src="${topic.user.imgUrl}"></center>
                <br>
                <span style="font-size: smaller;">Autor: <b>${topic.user.nick}</b></span><br>
                <span style="font-size: smaller;">Dołączył: ${topic.user.created}</span><br>
                <span style="font-size: smaller;">Online: ${topic.user.lastLogin}</span><br>


                <c:if test="${loggedInUser.id == topic.user.id}">

                    <center><br><a class="btn tooltipped" data-position="bottom" data-tooltip="Edytuj"
                                   href="/topic/edit/${topic.id}/"><i
                            class="material-icons">edit</i></a>

                        <a class="btn tooltipped red lighten-2" data-position="bottom"
                           data-tooltip="Uwaga jeśli usuniesz temat znikną również wszystkie posty!"
                           href="/topic/delTopic/${topic.id}"><i
                                class="material-icons">delete</i></a></center>
                </c:if>

            </div>

            <div class="col s10">

                <h5>${topic.name}</h5>
                <br>


                <blockquote><span style="font-size:  smaller;">${topic.created}</span><br><br>
                    ${topic.content}<br>

                    <span style="color: darkgray;">---</span><br>
                    <span style="color: darkgray;">${topic.user.signature}</span><br>
                </blockquote>
            </div>


            <table></table>

        </div>
    </div>


    <%--////// TOPIC END--%>

    <c:forEach items="${comments}" var="comment">
        <div class="col s8 offset-s2">
            <div class="card-panel grey lighten-5 z-depth-1">
                <div class="col s2">
                    <br>
                    <center><img height="80" width="80" class="circle responsive-img" src="${comment.user.imgUrl}">
                    </center>
                    <br>
                    <span style="font-size: smaller;">Autor: <b>${comment.user.nick}</b></span><br>
                    <span style="font-size: smaller;">Dołączył: ${comment.user.created}</span><br>
                    <span style="font-size: smaller;">Online: ${comment.user.lastLogin}</span><br>


                    <c:if test="${loggedInUser.id == comment.user.id}">

                        <center><br><a class="btn tooltipped " data-position="bottom" data-tooltip="Edytuj"
                                       href="/topic/${topic.id}/edit/${comment.id}//">
                            <i class="material-icons">edit</i></a>

                            <a class="btn tooltipped red lighten-2" data-position="bottom" data-tooltip="Usuń post"
                               href="/topic/${topic.id}/delete/${comment.id}/" class="waves-effect waves-light btn"><i class="material-icons">delete</i></a>
                        </center>
                    </c:if>

                </div>

                <div class="col s10">


                    <blockquote><span style="font-size:  smaller;">${comment.created}</span><br><br>
                            ${comment.content}<br>

                        <span style="color: darkgray;">---</span><br>
                        <span style="color: darkgray;">${comment.user.signature}</span><br>
                    </blockquote>
                </div>


                <table></table>

            </div>
        </div>
    </c:forEach>


    <div class="col s1 offset-s10">
        <a href="/topic/${topic.id}/addComment/" data-position="top" data-tooltip="Dodaj post"
           class="btn-floating btn-large btn tooltipped waves-light pulse"><i
                class="material-icons">add</i></a>
    </div>

</div>


<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.js"></script>


<script>
    M.AutoInit();
    document.addEventListener('DOMContentLoaded', function () {
        var elems = document.querySelectorAll('.tooltipped');
        var instances = M.Tooltip.init(elems, options);
    });
</script>


<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
