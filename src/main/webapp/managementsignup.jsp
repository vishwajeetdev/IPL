<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>managementsignup.jsp</title>


<style>
        
                body {
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
                    color: darkcyan;
                    margin-bottom: 30px;
                }

                .form {
                    width: 34%;
                    background-color: #fff;
                    padding: 20px;
                    border-radius: 8px;
                    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
                    box-sizing: border-box;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                }

                input,
                select {
                    width: 90%;
                    /* Adjust the width as needed */
                    padding: 10px;
                    margin-bottom: 15px;
                    box-sizing: border-box;
                    border: 1px solid #ccc;
                    border-radius: 4px;
                }

                button {
                    width: 50%;
                    /* Adjust the width as needed */
                    background-color: rgb(13, 117, 221);
                    color: #fff;
                    padding: 10px 20px;
                    border: none;
                    border-radius: 4px;
                    cursor: pointer;
                    transition: background-color 0.3s;
                    margin: 20px 10px;
                    font-weight: bold;
                    font-size: large;
                    border: 1px solid rgb(13, 117, 221);
                }

                button[type=reset] {
                    background-color: white;
                    color: darkgreen;
                    border: 1px solid darkgreen;

                }





                .button {
                    display: flex;

                }

                .button>button[type=reset]:hover {

                    color: red;
                    background-color: rgb(206, 223, 206);
                     border: 1px solid red;

                }

                .button>button:hover {

                    color: rgb(13, 117, 221);
                    background-color: white;

                }
           
</style>
</head>
<body>
<h1>Welcome to Management Sign up</h1>

<div class="form">

<special:form action="managementsignup" modelAttribute="management">

Username: <special:input path="username"/>
<br>
<br>

Password: <special:input path="password"/>
<br>
<br>

<div class="button">
<special:button>Signup</special:button>  <special:button type="reset">Cancel</special:button>
</div>



</special:form>

</div>

</body>
</html>