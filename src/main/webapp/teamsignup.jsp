<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>teamsignup.jsp</title>
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