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

            <h5>${topic.name}</h5>
            <br>
            <blockquote>${topic.content}<br>

                <span style="color: darkgray;">---</span><br>
                <span style="color: darkgray;">${topic.user.signature}</span><br>

            </blockquote>
            <table>
                <tr>
                    <td><span style="font-size:  xx-small;">Stworzony: ${topic.created}</span>
                    </td>
                </tr>
                <tr>
                    <td><span style="font-size: smaller;">Autor: ${topic.user.nick}</span>
                    </td>
                </tr>
            </table>
        </div>
    </div>


    <c:forEach items="${comments}" var="comment">

        <div class="col s8 offset-s2">
            <div class="card-panel grey lighten-5 z-depth-1">

                <c:if test="${loggedInUser.id == comment.user.id}">
                    <div class="row">
                        <div class="col s11">
                            <blockquote>
                                    ${comment.content}<br>
                                <span style="color: darkgray;">---</span><br>
                                <span style="color: darkgray;">${comment.user.signature}</span><br>
                            </blockquote>
                            <table>
                                <tr>
                                    <td><span style="font-size:  xx-small;">Dodano: ${comment.created}</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span style="font-size: smaller;">To twój post</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class="col s1">
                            <div style="height: 3%"></div>
                            <div>
                                <a href="#" class="btn-floating btn-large waves-light"><i
                                        class="material-icons">edit</i></a>
                            </div>
                            <div style="height: 2%"></div>
                            <div>
                                <a href="/topic/${topic.id}/delete/${comment.id}/"
                                   class="btn-floating btn-large waves-light"><i
                                        class="material-icons">delete</i></a>
                            </div>


                        </div>

                    </div>


                </c:if>


                <c:if test="${loggedInUser.id != comment.user.id}">
                    <blockquote>
                            ${comment.content}<br>
                        <span style="color: darkgray;">---</span><br>
                        <span style="color: darkgray;">${comment.user.signature}</span><br></blockquote>
                    <table>
                        <tr>
                            <td width="30%"><span style="font-size: smaller;">${comment.user.nick}</span>
                            </td>
                            <td><span style="font-size:  xx-small;">Dodano: ${comment.created}</span>
                            </td>


                        </tr>

                    </table>
                </c:if>


            </div>
        </div>

    </c:forEach>


    <div class="col s1 offset-s10">
        <a href="/topic/${topic.id}/addComment/" class="btn-floating btn-large waves-light pulse"><i
                class="material-icons">add</i></a>
    </div>

</div>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
