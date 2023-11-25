<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
      
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>  
      
     
      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .grid-container {
        	width: fit-content;	
            display: grid;
            grid-template-columns: repeat(8, 150px); /* Adjust the number of columns as needed */
            gap: 0px;
            border: 1px solid #000; /* Optional: Add border */
        }	

        .grid-container > div {
            padding: 2px;
            border: 1px solid #000; /* Optional: Add border */
        }

     

        /* Optional: Adjust the styling as needed */
        th, td {
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
 <h1>Welcome to View All Team List Page</h1>

<div class="grid-container">
    <div>id</div>
    <div>Name</div>
    <div>Username</div>
    <div>Wallet</div>
     <div>Status</div>
    <div>Players</div>
    <div>Change Status</div>
    <div>Add Amount</div>

    <special:forEach var="team" items="${teams}">
        <div>${team.getTid()}</div>
        <div>${team.getName()}</div>
        <div>${team.getUsername()}</div>
        <div>${team.getWallet()}</div>
        <div>${team.isStatus()}</div>
        <div><a href="viewplayers?id=${team.getTid()}"><button>View Players</button></a></div>
        <div>Change Status</div>
        <div>Add Amount</div>
    </special:forEach>

</div>

</body>
</html>
