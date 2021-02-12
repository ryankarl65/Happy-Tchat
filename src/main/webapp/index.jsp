<%--
  Created by IntelliJ IDEA.
  User: ryank
  Date: 2/12/2021
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Chat Room</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    </head>

    <body class="container">
        <div class="row pt-5">Hello World Chat</div>
        <div class="row pt-5">

            <form action="/tchat/PseudoServlet" method="post">
                <label for="pseudo">Your Pseudo:</label>
                <input type="text" name="pseudo" id="pseudo">
                <button action="submit">Submit</button>
            </form>



        </div>
        <div class="row">
            <div class="col-md-6">Screen</div>
            <div class="col-md-6">
                <c:forEach var="msg" items="${messages}">
                   
                <c:out value="${msg}"/>
                </c:forEach>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <form action="/tchat/MessageServlet" method="post">
                    <label for="message">Your Message:</label>
                    <input type="text" name="message" id="message">
                    <button action="submit">Submit</button>
                </form>
            </div>
        </div>
        <button type="button" class="btn btn-outline-secondary">Send</button>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
    crossorigin="anonymous"></script>

</html>