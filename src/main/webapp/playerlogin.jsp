<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Management Login</title>

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
                height: 100vh;
            }

            h1 {
                color: #333;
                margin-bottom: 30px;
            }

            form {
                width: 300px;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            }

            input {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            button {
                background-color: #4caf50;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s;
            }

            button[type="reset"] {
                background-color: #f44336;
                margin-left: 10px;
            }

            button:hover,
            button[type="reset"]:hover {
                background-color: #45a049;
            }
        </style>
    </head>

    <body>

        <h1>${msg}</h1>

        <h1>Welcome To Player Login</h1>

        <form action="playerlogin">

            Username: <input type="text" name="username" placeholder="Enter Your Username">
            <br>
            <br>
            Password: <input type="password" name="password" placeholder="Enter Your Password">
            <br>
            <br>
            <button type="submit">Login</button>
            <button type="reset">Cancel</button>

        </form>

    </body>

    </html>