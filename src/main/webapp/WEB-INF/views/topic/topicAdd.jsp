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
            <form:form method="post" modelAttribute="topic">

                Temat : <br><form:textarea type="text" path="name"/><br>
                <form:errors path="name"/><br>


                Treść : <br><form:textarea type="text" path="content" class="materialize-textarea"
                                           data-length="250" id="textarea1"/><br>
                <form:errors path="content"/><br>


                <input type="submit" class="waves-orange btn" value="Dodaj temat"/>

            </form:form>


        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.js"></script>


<script>
    M.AutoInit();
    $(document).ready(function () {
        $('input#input_text, textarea#textarea1').characterCounter();
    });
</script>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>

</body>
</html>
