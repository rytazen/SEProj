<%-- 
    Document   : result
    Created on : Sep 2, 2014, 5:05:46 PM
    Author     : Tommy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random" %>
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

            <input type="submit" value="Play!" /><br>
        </form> <br>
        <%
            String guess = request.getParameter("guess");
            //If player has selected something
            if (guess != null) {
                if (guess.equals("scissor")) {
                    guess = "scissor";
                } else if (guess.equals("paper")) {
                    guess = "paper";
                } else if (guess.equals("stone")) {
                    guess = "stone";
                };
                
                out.println("You chose " + guess + ".<br />");

                String comp = "";
                Random generator = new Random();
                int compInt;
                compInt = generator.nextInt(3) + 1;

                //Declaring element to an index
                if (compInt == 1) {
                    comp = "stone";
                } else if (compInt == 2) {
                    comp = "scissor";
                } else if (compInt == 3) {
                    comp = "paper";
                }

                out.println("Computer chose " + comp + "<br />");
        
                //If comp & player has the same element
                if(guess.equals(comp)){
                    out.println("It's a draw!");
                    
                //comparison
                }else if(guess.equals("stone")){
                    if(comp.equals("scissor")){
                        out.println("You win!");
                    } else if(comp.equals("paper")){
                        out.println("You lose!");
                    }
                    
                }else if(guess.equals("paper")){
                    if(comp.equals("stone")){
                        out.println("You win!");
                    }else if(comp.equals("scissor")){
                        out.println("You lose!");
                    }
                    
                }else if(guess.equals("scissor")){
                    if(comp.equals("paper")){
                        out.println("You win!");
                    }else if(comp.equals("stone")){
                        out.println("You lose");
                    }
                }
            } else {
                //Informing player to select
                out.println("Please select something!");
            }
        %>
    </body>
</html>
