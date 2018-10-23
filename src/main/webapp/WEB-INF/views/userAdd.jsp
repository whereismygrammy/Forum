<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

                Login : <br><form:input type="text" path="nick"/><br>
                <form:errors path="nick"/><br>

                Haslo : <br><form:input type="password" path="password"/><br>
                <form:errors path="password"/><br>

                Email : <br><form:input type="text" path="email"/><br>
                <form:errors path="email"/><br>
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