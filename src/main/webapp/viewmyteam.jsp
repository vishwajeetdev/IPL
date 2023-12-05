<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>viewmyteam.jsp</title>

         <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">
            
            <style>
              * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Hind Siliguri', sans-serif;
    }
                body {
                   
                   
                    margin: 0;
                    padding: 0;
                    background-color: #8aaee0;
                }

                h1 {
                    color: darkcyan;
                    text-align: center;
                }

                table {
                    width: 90%;
                    border-collapse: collapse;
                    margin: 20px auto;
                    background-color: whitesmoke;
                    box-shadow: 0 0 10px black;
                    table-layout: auto;
                    
                    
                }

                th,
                td {
                    padding: 8px;
                    border: 1px solid #ccc;
                    text-align: center;
                    line-height: 1.2;
                    position: relative;
                    
                     

                }

                th {
                    background-color: white;
                    color: #8aaee0;
                    
                }

                td {
                    color: ;
                    font-weight: bold;
                    
                    
                    
                }


        
            </style>
        </head>

        <body>

            <h1>Welcome to View Team Player Name</h1>

            <h1>${teamname}</h1>


            <% String msg=(String)request.getAttribute("msgg"); 
            
            if(msg!=null){ %>
                <h1>${msg}</h1>

                <% } else { %>

                    <table border="1" cellspacing="0" cellpadding="8">

                        <tr>
                            <th>Name</th>
                            <th>Role</th>
                             <th>Country</th>
                            <th>Price</th>
                            
                        </tr>



                        <special:forEach var="player" items="${players}">

                            <tr>
                                <th>${player.getName()}</th>
                                <th>${player.getRole()}</th>
                                <th>${player.getCountry()}</th>
                                <th>${player.getPrice()}</th>
                            </tr>




                        </special:forEach>
                        
						

                    </table>
                     <% } %>
                    
                    
                    <a href="teamhomedummy"><button>Back</button></a>
                   



                   


        </body>
         

        </html>