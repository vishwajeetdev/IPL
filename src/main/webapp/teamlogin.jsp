<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>teamlogin.jsp</title>
</head>

<body>
<h1>${msg}</h1>
<h1>Welcome to Team Login </h1>

<form action="teamlogin">
Username: <input type="text" name="username" placeholder="Enter Your Username">
<br>
<br>
Password: <input type="password" name="password" placeholder="Enter Your Password">
<br>
<br>
<button type="submit">Submit</button>   <button type="reset">Cancel</button>




</form>

</body>
</html>