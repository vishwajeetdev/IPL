<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %> -->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup Page</title>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">

  <style type="text/css">
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Hind Siliguri', sans-serif;
    }

    body {
      position: relative;
      background-color: #071026;


    }

    nav {
      background-color: #262E4A;
      height: 50px;
      display: flex;
      align-items: center;
    }

    nav>.choose {
      height: 40px;
      width: 400px;
      border: 1px solid none;
      display: flex;
      justify-content: space-around;
      margin-left: auto;
      align-items: center;
    }

    button {
      padding: 0px 5px;
      height: 35px;
      border: 2px solid darkblue;
      background-color: #006BFF;
      font-size: 20px;
      color: white;
      text-align: center;
      border-radius: 7px;
      cursor: pointer;
    }

    button:hover {
      background-color: #0F53B7;
    }

    .grid-container {
      margin: 30px auto;
      margin-left: 20px;
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      /* 5 columns with equal width */
      grid-template-rows: repeat(2, 1fr);
      /* 2 rows with equal height */
      gap: 80px;
      /* Adjust the gap as needed */
    }

    .grid-container>div {
      height: 220px;
      /* Adjust the height as needed */
      width: 220px;
      /* Adjust the width as needed */
      border: 2px solid #C6C3C3;
      border-radius: 10px;
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }

    .csk {
      background-image: url('/Image/CSK.png');
    }

    .csk:hover {
      background-image: url('/Image/CSK-TROPHY.png');
    }

    .dc {
      background-image: url('DC.png');
    }

    .gt {
      background-image: url('gt.png');
    }

    .gt:hover {
      background-image: url('gt\ trophy.png');
    }

    .kkr {
      background-image: url('kkr.png');
    }

    .kkr:hover {
      background-image: url('kkr\ trophy.png');
    }

    .lsg {
      background-image: url('lsg.png');
    }


    .mi {
      background-image: url('mi.png');
    }

    .mi:hover {
      background-image: url('mi\ trohy.png');
    }

    .pb {
      background-image: url('pb.png');
    }

    .rr {
      background-image: url('rr.png');
    }

    .rr:hover {
      background-image: url('rr\ trpohy.png');
    }

    .rcb {
      background-image: url('rcb.png');
    }

    .srh {
      background-image: url('srh.png');
    }

    .srh:hover {
      background-image: url('srh\ trophy.png');
    }

    footer {
      width: 100%;
      height: 50px;
      background-color: black;
      display: flex;

      justify-content: center;
      align-items: center;
      color: white;
      position: absolute;
      top: 645px;

    }
  </style>

</head>

<!-- <link rel="stylesheet" href="style.css"> -->

<body>
  <!-- <h1>Welcome to the Signup Page</h1> -->

  <form action="signup">



    <nav>
      <div class="choose">
        <button type="submit" value="Management" name="role">Management</button>
        <button type="submit" value="Team" name="role">Team</button>
        <button type="submit" value="Player" name="role">Player</button>
      </div>
    </nav>

  </form>

  <div class="grid-container">
    <div class="csk"></div>
    <div class="rcb"></div>
    <div class="gt"></div>
    <div class="lsg"></div>
    <div class="srh"></div>
    <div class="pb"></div>
    <div class="dc"></div>
    <div class="mi"></div>
    <div class="kkr"></div>
    <div class="rr"></div>
  </div>


  <footer>Copyright © IPL 2023 All Rights Reserved.</footer>
</body>

</html>