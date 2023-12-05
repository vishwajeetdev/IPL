<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>


  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <title>managementsignup.jsp</title>
    <!-- <link rel="stylesheet" href="./style.css"> -->
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">

    
    
    
    
    
   

    <style>
      * {
        margin: 0;
        padding: 0;
         font-family: 'Hind Siliguri', sans-serif;
      }

      section {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        width: 100%;
        background: url("https://bit.ly/44VaKoy") no-repeat;
        background-position: center;
        background-size: cover;
      }

      .form-box {
        position: relative;
        width: 400px;
        height: 450px;
        background: transparent;
        border: 2px solid rgba(255, 255, 255, 0.5);
        border-radius: 20px;
        backdrop-filter: blur(15px);
        display: flex;
        justify-content: center;
        align-items: center;
      }

      h2 {
        font-size: 2em;
        color: #fff;
        text-align: center;
      }

      .inputbox {
        position: relative;
        margin: 30px 0;
        width: 310px;
        border-bottom: 2px solid #fff;
      }

      .inputbox label {
        position: absolute;
        top: 50%;
        left: 5px;
        transform: translateY(-50%);
        color: #fff;
        font-size: 1em;
        pointer-events: none;
        transition: 0.5s;
      }

      input:focus~label {
        top: -5px;
      }

      input:valid~label {
        top: -5px;
      }

      .inputbox input {
        width: 100%;
        height: 50px;
        background: transparent;
        border: none;
        outline: none;
        font-size: 1em;
        padding: 0 35px 0 5px;
        color: #fff;
      }

      .inputbox ion-icon {
        position: absolute;
        right: 8px;
        color: #fff;
        font-size: 1.2em;
        top: 20px;
      }

      .forget {
        display: flex;
        justify-content: space-between;
        margin: 10px 0 15px;
        font-size: 0.9em;
        color: #fff;
      }

      .forget label:nth-child(2) {
        order: 1;
      }

      .forget label {
        display: flex;
        align-items: center;
      }

      .forget label input[type="checkbox"] {
        margin-right: 6px;
      }

      .forget label a {
        color: #fff;
        text-decoration: none;
      }

      .forget label a:hover {
        text-decoration: underline;
      }

      button {
        width: 100%;
        height: 40px;
        border-radius: 40px;
        background: #fff;
        border: none;
        outline: none;
        cursor: pointer;
        font-size: 1em;
        font-weight: 600;
      }

      .register {
        font-size: 0.9em;
        color: #fff;
        text-align: center;
        margin: 25px 0 10px;
      }

      .register p a {
        text-decoration: none;
        color: #fff;
        font-weight: 600;
      }

      .register p a:hover {
        text-decoration: underline;
      }
    </style>

  </head>

  <body>
    <!-- partial:index.partial.html -->
 <section>
  <div class="form-box">
    <div class="form-value">
      <form action="managementsignup" method="post"> <!-- Specify the method as POST -->
        <h2>Signup</h2>

        <div class="inputbox">
          <ion-icon name="mail-outline"></ion-icon>
          <input type="text" path="username" name="username" required>
          <label for="">Email</label>
        </div>
        <div class="inputbox">
          <ion-icon name="lock-closed-outline"></ion-icon>
          <input type="password" path="password" name="password" required>
          <label for="">Password</label>
        </div>

        <div class="forget">
          <label>
            <input type="checkbox" name="rememberMe"> Remember me
          </label>
          <label>
            <a href="#">Forgot password?</a>
          </label>
        </div>
        <button type="submit">Signup</button> <!-- Specify the type as submit -->

      </form>
      <div class="register">
        <p>Already have an account <a href="managementlogin.jsp">Login</a></p>
      </div>
    </div>
  </div>
</section>

    <!-- partial -->
    <script src='https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js'></script>
    <script src='https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js'></script>
  </body>

  </html>