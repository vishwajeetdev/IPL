<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="special" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>viewteambyname.jsp</title>

<h1>Welcome to view team by name</h1>
</head>
<body>



<form action="fetchusingteamname">

<select name="teamname">


<special:forEach var="team" items="${teams}">

<option value="${team.getName()}">${team.getName()}</option>

</special:forEach>

</select>


<button type="submit">Search</button> <button>Cancel</button>










</form>















</body>
</html>