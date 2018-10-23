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
    <div class="col s10 offset-s1">
        <div class="card-panel grey lighten-5 z-depth-1">
            <table>
                <tr>
                    <td>Stworzony: ${topic.created}
                    </td>
                    <td> Autor: ${topic.user.nick}
                    </td>
                    <td> Autor: Ostatnia zmiana: ${topic.updated}
                    </td>
                </tr>
            </table>
            <h5>${topic.name}</h5>
            <br>
            <blockquote>${topic.content}</blockquote>

        </div>
    </div>


    <c:forEach items="${comments}" var="comment">

        <div class="col s10 offset-s1">
            <div class="card-panel grey lighten-5 z-depth-1">
                <blockquote>
                        ${comment.content}
                </blockquote>


                <table>
                    <tr>
                        <td>Dodano: ${comment.created}
                        </td>
                        <td> Autor: ${comment.user.nick}
                        </td>
                    </tr>
                </table>


            </div>
        </div>

    </c:forEach>
    <br>
    <div class="col s1 offset-s10">
        <a href="" class="btn-floating btn-large cyan pulse"><i class="material-icons">edit</i></a>
    </div>

</div>


<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
