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
<h1><a href="managementlogin.jsp">Login as Manangement</a></h1> <br><br>
<h1><a href="playerlogin.jsp">Login as Player</a></h1> <br><br>
<h1><a href="teamlogin.jsp">Login as Team</a></h1> 







</form>




</body>
</html>