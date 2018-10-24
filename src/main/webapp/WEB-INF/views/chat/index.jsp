<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<html>
<head>
    <title>Chat</title>
</head>
<body>
<%@ include file="/WEB-INF/views/footer_header/header.jspf" %>

<div class="row">
    <div class="col s6 offset-s3">
        <div class="card-panel grey lighten-5 z-depth-1">

            <textarea class="input-field col s12" style="height: 20rem;" readonly="true" rows="10" cols="80"
                      id="log"></textarea>

            <input type="text" size="51" id="msg" placeholder="Message"/>
            <div align="right">

                <button onclick="send();
                scrol();
                document.getElementById('msg').value = '';" class="btn waves-effect waves-light" id="btn">Wyślij
                    <i class="material-icons right">send</i>>
                </button>
            </div>

        </div>
    </div>
</div>

<input type="hidden" id="username" value="${loggedInUser.nick}"/>

</body>


<script>

    var ws;

    window.onload = function connect() {
        var username = document.getElementById("username").value;
        console.log(username);
        var host = document.location.host;
        var pathname = document.location.pathname;

        ws = new WebSocket("ws://" + host + pathname + username);

        ws.onmessage = function (event) {
            var log = document.getElementById("log");
            console.log(event.data);
            var message = JSON.parse(event.data);
            log.innerHTML += message.from + " : " + message.content + "\n";
            var textarea = document.getElementById('log');
            textarea.scrollTop = textarea.scrollHeight;
        };
    }

    function send() {
        var content = document.getElementById("msg").value;
        var json = JSON.stringify({
            "content": content
        });

        ws.send(json);
    }
</script>

<script>
    function scrol() {
        var textarea = document.getElementById('log');
        textarea.scrollTop = textarea.scrollHeight;
    }
</script>

<script>

    // Get the input field
    var input = document.getElementById("msg");

    // Execute a function when the user releases a key on the keyboard
    input.addEventListener("keyup", function (event) {
        // Cancel the default action, if needed
        event.preventDefault();
        // Number 13 is the "Enter" key on the keyboard
        if (event.keyCode === 13) {
            // Trigger the button element with a click
            document.getElementById("btn").click();
        }
    });

</script>

<%@ include file="/WEB-INF/views/footer_header/footer.jspf" %>
</html>