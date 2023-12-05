<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>teamsignup.jsp</title>

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
<h1>Welcome to Team Sign up</h1>

<special:form action="teamsignup" modelAttribute="team">

Name: <special:input path="name"/>
<br>
<br>

Username: <special:input path="username"/>
<br>
<br>

Password: <special:input path="password"/>
<br>
<br>

Wallet: <special:input path="wallet"/>
<br>
<br>

<special:button>Signup</special:button>  <special:button type="reset">Cancel</special:button>

<br><br>






</special:form>

<a href="teamlogin.jsp"><button>login</button></a>

</body>
</html>