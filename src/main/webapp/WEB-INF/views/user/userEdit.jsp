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
    <div class="z-depth-3, col s4 offset-s4">
        <form method="post">

            <form:form method="post" modelAttribute="user">

                Email : <br><form:input type="text" path="signature"/><br>
                <form:errors path="signature"/><br>

                <center>
                    <input type="submit" class="waves-effect waves-light btn" value="Zapisz użytkownika">
                </center>

            </form:form>

        </form>
    </div>
</div>
<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>

</body>
</html>