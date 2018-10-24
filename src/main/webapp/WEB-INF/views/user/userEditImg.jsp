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

                Twój podpis : <br><form:input type="text" path="imgUrl"/><br>
                <form:errors path="imgUrl"/><br>

                <center>
                    <input type="submit" class="waves-effect waves-light btn" value="Zapisz">
                </center>

            </form:form>

        </form>
    </div>
</div>
<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>

</body>
</html>