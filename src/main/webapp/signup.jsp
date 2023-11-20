<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>signup.jsp</title>

</head>
<body>
<h1>Welcome to Signup Page</h1>


<form action="signup">

<h1>Choose your role</h1>

<input type="radio" name="role" value="Management"> Management <br><br>
<input type="radio" name="role" value="Team"> Team <br><br>
<input type="radio" name="role" value="Player"> Player <br><br>


<button type="submit">Submit</button> <button type="reset">Cancel</button> 

<br>
<br>
<a href="managementlogin.jsp">Login as Manangement</a><br><br>
<a href="playerlogin.jsp">Login as Player</a>







</form>




</body>
</html>