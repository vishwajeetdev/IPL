<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special"%>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
              
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
                    font-family: Arial, sans-serif;
                    background-color: #f4f4f4;
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
            <h1>Welcome to View All Team List Page</h1>

            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Name</th>
                        <th>Username</th>
                        <th>Wallet</th>
                        <th>Status</th>
                        <th>Players</th>
                        <th>Change Status</th>
                        <th>Add Amount</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <special:forEach var="team" items="${teams}">
                        <tr>
                            <td>${team.getTid()}</td>
                            <td>${team.getName()}</td>
                            <td>${team.getUsername()}</td>
                            <td>${team.getWallet()}</td>
                            <td>${team.isStatus()}</td>
                            
                            <td><a href="viewplayers?id=${team.getTid()}"><button>View Players</button></a></td>
                            
                            <td><a href="changeteamstatus?id=${team.getTid()}"><button>Change Status</button></a></td>
                            
                            <td><a href="addamount.jsp?id=${team.getTid()}"><button>Add Amount</button></a></td>
                        </tr>
                    </special:forEach>
                </tbody>
            </table>
        </body>

        </html>
        
        