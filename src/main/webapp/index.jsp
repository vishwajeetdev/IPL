<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    
     <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">



    <style>
        body {
            font-family: 'Hind Siliguri', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
        }

        h3 {
            color: #555;
            margin-bottom: 20px;
        }

        a {
            text-decoration: none;
            color: #007bff;
            transition: color 0.3s;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>

<body>

    <h1>${msg}</h1>

    <h3><a href="managementlogin.jsp">Login as Management</a></h3>
    <h3><a href="playerlogin.jsp">Login as Player</a></h3>
    <h3><a href="teamlogin.jsp">Login as Team</a></h3>

</body>

</html>
