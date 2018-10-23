<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/views/footer_header/header.jspf" %>

<div class="row">
    <div class="col s6 offset-s3">
        <div class="card-panel grey lighten-5 z-depth-1">
            <form:form method="post" modelAttribute="comment">

                Twój komentarz : <br><form:input type="text" path="content"/><br>
                <form:errors path="content"/><br>

                <input type="submit" class="waves-effect waves-light btn" value="Skomentuj">

            </form:form>
        </div>
    </div>
</div>


<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>

</body>
</html>