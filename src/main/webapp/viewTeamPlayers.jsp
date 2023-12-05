<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewTeamPlayers.jsp</title>

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
    
     </style>
</head>
<body>

<h1>Welcome to View Team Player Name</h1>

<h1>${teamname}</h1>


<% String msg =(String)request.getAttribute("msg");

if(msg!=null){ %>
	<h1>${msg}</h1>
	
<% } else { %>

<table border="1" cellspacing="0" cellpadding="8">

<tr>
<th>Name</th>
<th>Role</th>
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


</body>
</html>