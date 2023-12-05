<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>buyplayer.jsp</title>

 <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">




 <style>
                body {
                   font-family: 'Hind Siliguri', sans-serif;
                    background-color: #f4f4f4;
                    margin: 0;
                    padding: 0;
                    background-color: #8aaee0;
                }

                h1 {
                    color: darkcyan;
                    text-align: center;
                }
                h3{
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
                    background-color: #3498db;
                    color: white;
                    
                }

                td {
                    color: darkslategrey;
                    font-weight: bold;
                    
                    
                    
                }


                button {
                    background-color: #3498db;
                    padding: 8px 12px;
                    border: none;
                    border-radius: 3px;
                    cursor: pointer;
                    text-decoration: none;
                    font-weight: bold;
                    color: white;
                }

                button:hover {
                    background-color: white;
                    color: #3498db;
                    border:1px solid #3498db;
                }
            </style>






</head>
<body>

<h1>${msg}</h1>

<h3 style="color:red;">Team Name = ${teamname}</h3>
<h3 style="color:blue;">Wallet = ${teamwallet} cr</h3>




            <h1>Welcome to View All Player List Page</h1>

            <table>
                <thead>
                    <tr>
							<th>id</th>
							<th>Name</th>
							<th>Role</th>
							<th>Base Price</th>
							<th>Country</th>
							<th>Status</th>
							<th>Buy</th>
							                     
                    </tr>
                </thead>
                <tbody>
                    <special:forEach var="player" items="${players}">
                        <tr>
                            <td>${player.getId()}</td>
                            <td>${player.getName()}</td>
                            <td>${player.getRole()}</td>
                            <td>${player.getPrice()}</td>
                            <td>${player.getCountry()}</td>
                             <td>${player.getStatus()}</td>
                                                     
                            <td><a href="buyplayer?id=${player.getId()}"><button>Buy Player</button></a></td>
                            
                        </tr>
                    </special:forEach>
                </tbody>
            </table>


</body>
</html>