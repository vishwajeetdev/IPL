<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Signup Page</title>

        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f0f0f0;
                margin: 0;
                padding: 0;
                text-align: center;
            }

            h1 {
                color: #333;
                margin-top: 30px;
            }

            form {
                width: 25%;
                margin: auto;
                background-color: #fff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
                margin-top: 30px;
            }

            h2 {
                color: #555;
                margin-bottom: 20px;
            }
                
            .choose{
            width: 50%;
            height: 17%;
            border: 1px solid white;
            margin-left: 95px;
             border-radius: 8px;
            box-shadow: 0 0 4px rgb(62, 41, 41);
            padding-top: 3%;
            padding-left: 2%;



            }

            label {
                display: flex;
                align-items: center;
                margin-bottom: 15px;
                color: #555;
                margin-left: 10px;
            }

            input[type="radio"] {
                margin-right: 10px;
            }

            button {
                background-color: #4caf50;
                color: #fff;
                padding: 12px 24px;
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

            a {
                color: #007bff;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }

        

        </style>
    </head>

    <body>
        <h1>Welcome to the Signup Page</h1>

        <form action="signup">

            <h2>Choose your role</h2>

            <div class="choose">
                <label><input type="radio" name="role" value="Management"> Management</label>
                <label><input type="radio" name="role" value="Team"> Team</label>
                <label><input type="radio" name="role" value="Player"> Player</label>
            </div>

            <br>
            <button type="submit">Submit</button>
            <button type="reset">Cancel</button>

            <br>
            <br>

            <p>Already have an account? <a href="index.jsp">Click here to login</a></p>

        </form>
    </body>

    </html>