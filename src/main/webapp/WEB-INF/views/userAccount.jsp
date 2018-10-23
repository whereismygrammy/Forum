<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/WEB-INF/views/footer_header/header.jspf" %>


${loggedInUser.nick}
${loggedInUser.password}
${loggedInUser.email}
${loggedInUser.created}
${loggedInUser.lastLogin}


<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</body>
</html>
