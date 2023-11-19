<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>managementsignup.jsp</title>
</head>
<body>
<h1>Welcome to Management Sign up</h1>

<special:form action="managementsignup" modelAttribute="management">

Username: <special:input path="username"/>
<br>
<br>

Password: <special:input path="password"/>
<br>
<br>

<special:button>Signup</special:button>  <special:button type="reset">Cancel</special:button>



</special:form>

</body>
</html>