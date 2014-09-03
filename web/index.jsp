<%-- 
    Document   : index
    Created on : Sep 2, 2014, 4:57:06 PM
    Author     : Tommy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scissor, Paper, Stone</title>
    </head>
    <body>
        <h1>Scissor, Paper, Stone</h1>
        You choose:
        <form action="result.jsp" method="post" required>
            <input type="radio" name="guess" value="scissor">Scissor<br>
            <input type="radio" name="guess" value="paper">Paper<br>
            <input type="radio" name="guess" value="stone">Stone<br>
            
            <input type="submit" value="Play!" />
        </form>
    </body>
</html>
