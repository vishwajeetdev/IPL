<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>addamount.jsp</title>
  
   <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">


  
  

  <style>
   

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Hind Siliguri', sans-serif;
      
    }
    
  

    .container {
      padding: 0 15px;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      background: #0d1635;
    }

    .facebook-page {
      display: flex;
      flex-direction: column;
      text-align: center;
      max-width: 1000px;
      width: 100%;
    }

    .facebook-page h1 {
      color: #1877f2;
      font-size: 4rem;
      margin-bottom: 10px;
    }

    .facebook-page p {
      font-size: 1.75rem;
      white-space: nowrap;
      margin-bottom: 30px;
      color: white;
    }

    form {
      display: flex;
      flex-direction: column;
      background: #fff;
      border-radius: 8px;
      padding: 20px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 8px 16px rgba(0, 0, 0, 0.1);
      max-width: 400px;
      width: 100%;
    }

    form input {
      height: 55px;
      width: 100%;
      border: 1px solid #ccc;
      border-radius: 6px;
      margin-bottom: 15px;
      font-size: 1rem;
      padding: 0 14px;
    }

    form input:focus {
      outline: none;
      border-color: #1877f2;
    }

    ::placeholder {
      color: #777;
      font-size: 1.063rem;
    }

    .login {
      width: 100%;
      border: none;
      outline: none;
      cursor: pointer;
      background: #1877f2;
      padding: 15px 0;
      border-radius: 6px;
      color: #fff;
      font-size: 1.25rem;
      font-weight: 600;
      transition: 0.2s ease;
    }

    .login:hover {
      background: #0d65d9;
    }

 





  

    @media (max-width: 900px) {
      .facebook-page {
        flex-direction: column;
        text-align: center;
      }
    }

    @media (max-width: 460px) {
      .facebook-page h1 {
        font-size: 3.5rem;
      }

      .facebook-page p {
        font-size: 1.3rem;
      }

      form {
        padding: 15px;
      }
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="facebook-page">
      <h1>Indian Premier League</h1>
      <p>A unit of Board of Control for Cricket in India (BCCI)</p>

      <% int id=Integer.parseInt(request.getParameter("id")); %>

      <form action="addamount">
        <input type="text" placeholder="Enter the Amount" name="amount" required>
        <input type="text" name="id" value="<%=id%>" hidden="true">
        <div class="link">
          <button type="submit" class="login">Add Amount</button>
        </div>
      </form>
    </div>
  </div>
</body>

</html>