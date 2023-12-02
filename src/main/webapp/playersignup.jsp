<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib prefix="special" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">
            <title>Players Signup</title>

            <style>
                body {
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    background-color: #00175f;
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
                    color: white;
                    margin-bottom: 30px;
                }

                form {
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

            <h1>Welcome To Players Sign Up Page</h1>

            <special:form action="playersignup" modelAttribute="player">

                <special:input path="name" placeholder="Name" />
                <special:input path="username" placeholder="Username" />
                <special:input path="password" placeholder="Password" />

                <special:select path="role">
                    <special:option value=" ">Role</special:option>
                    <special:option value="Batsman">Batsman</special:option>
                    <special:option value="Bowler">Bowler</special:option>
                    <special:option value="Allrounder">Allrounder</special:option>
                    <special:option value="WicketKeeper">WicketKeeper</special:option>
                </special:select>

                <special:select path="country">
                    <special:option value=" ">Country</special:option>
                    <special:option value="Bharat">Bharat</special:option>
                    <special:option value="Afghanistan">Afghanistan</special:option>
                    <special:option value="Australia">Australia</special:option>
                    <special:option value="Bangladesh">Bangladesh</special:option>
                    <special:option value="England">England</special:option>
                    <special:option value="Ireland">Ireland</special:option>
                    <special:option value="Namibia – Associate Nation">Namibia Associate Nation</special:option>
                    <special:option value="Netherlands – Associate Nation">Netherlands Associate Nation</special:option>
                    <special:option value="New Zealand">New Zealand</special:option>
                    <special:option value="South Africa">South Africa</special:option>
                    <special:option value="Sri Lanka">Sri Lanka</special:option>
                    <special:option value="UAE - Associate Nation">UAE Associate Nation</special:option>
                    <special:option value="West Indies">West Indies</special:option>
                    <special:option value="Zimbabwe">Zimbabwe</special:option>
                </special:select>

                <special:select path="price">
                    <special:option value=" ">Base-Price</special:option>
                    <special:option value="2">2 cr</special:option>
                    <special:option value="1.5">1.5 cr</special:option>
                    <special:option value="1">1 cr</special:option>
                    <special:option value="0.75">75 lakh</special:option>
                    <special:option value="0.50">50 lakh</special:option>
                    <special:option value="0.40">40 lakh</special:option>
                    <special:option value="0.30">30 lakh</special:option>
                    <special:option value="0.20">20 lakh</special:option>
                    <special:option value="0.10">10 lakh</special:option>
                </special:select>

                 <div class="button">
                    <button type="submit">Submit</button>
                    <button type="reset">Cancel</button>
                </div>

            </special:form>

        </body>

        </html>