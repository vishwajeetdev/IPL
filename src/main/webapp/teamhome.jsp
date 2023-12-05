<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>teamhome.jsp</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">



<style type="text/css">


   * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Hind Siliguri', sans-serif;
        }


</style>
</head>
<body>

<h1>${name}</h1>
<h1>${msg}</h1>

<h1>Welcome to Team Home Page</h1>

<a href="viewavilableplayer"><button>View Avilable Player</button></a>

<a href="viewteam"><button>View Team</button></a>

<a href="viewteambyname"><button>View Team By Name</button></a>

</body>
</html>