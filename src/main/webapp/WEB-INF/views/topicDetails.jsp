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
            <blockquote>${topic.content}</blockquote>
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
                                    ${comment.content}
                            </blockquote>
                            <table>
                                <tr>
                                    <td><span style="font-size:  xx-small;">Dodano: ${comment.created}</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span style="font-size: smaller;">Autor: ${comment.user.nick}</span>
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
                                <a href="/topic/${topic.id}/${comment.id}/" class="btn-floating btn-large waves-light"><i
                                        class="material-icons">delete</i></a>
                            </div>


                        </div>

                    </div>


                </c:if>


                <c:if test="${loggedInUser.id != comment.user.id}">
                    <blockquote>
                            ${comment.content}
                    </blockquote>
                    <table>
                        <tr>
                            <td><span style="font-size:  xx-small;">Dodano: ${comment.created}</span>
                            </td>
                        </tr>
                        <tr>
                            <td><span style="font-size: smaller;">Autor: ${comment.user.nick}</span>
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

    <%--<div id="addComment" class="modal">--%>
    <%--<div class="modal-content">--%>

    <%--<form:form method="post" target="/${topic.id}/addComment/" modelAttribute="comment">--%>

    <%--Twój komentarz : <br><form:input type="text" path="content"/><br>--%>
    <%--<form:errors path="content"/><br>--%>

    <%--<input type="submit" class="waves-effect waves-light btn" value="Skomentuj">--%>

    <%--</form:form>--%>


    <%--</div>--%>
    <%--<div class="modal-footer">--%>
    <%--<a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>--%>
    <%--</div>--%>
    <%--</div>--%>


    <%--<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.js"></script>--%>
    <%--<script>--%>
    <%--M.AutoInit();--%>

    <%--document.addEventListener('DOMContentLoaded', function () {--%>
    <%--var elems = document.querySelectorAll('.modal');--%>
    <%--var instances = M.Modal.init(elems, options);--%>
    <%--});--%>

    <%--</script>--%>

</div>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
