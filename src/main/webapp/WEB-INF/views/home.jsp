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

    <div class="col s8 offset-s2">
        <div class="card-panel grey lighten-5 z-depth-1">

            <table>
                <tr>
                    <th>Temat</th>
                    <th>Autor</th>
                    <th>Ostatnia aktualizacja</th>
                    <th></th>

                    <%--<c:if test="${loggedInUser.id == topic.user.id}">--%>
                        <%--<th></th>--%>
                        <%--<th></th>--%>
                    <%--</c:if>--%>


                </tr>
                <c:forEach items="${topics}" var="topic">
                    <tr>
                        <td>${topic.name}</td>
                        <td>${topic.user.nick}</td>
                        <td>${topic.updated}</td>
                        <td><a href="/topic/${topic.id}" class="waves-effect waves-light btn">Przejdź</a>
                        </td>


                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>

    <div class="col s1 offset-s10">
        <a href="/topic/addTopic" data-position="top" data-tooltip="Dodaj post"
           class="btn-floating btn-large btn tooltipped waves-light pulse"><i class="material-icons">add</i></a>
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
