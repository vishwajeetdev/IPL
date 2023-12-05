<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %> -->
<!DOCTYPE html>
<html>


 <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@600&family=Merienda:wght@800&family=Noto+Serif:ital@1&family=Pacifico&family=Roboto&display=swap" rel="stylesheet">




<head>
    <meta charset="ISO-8859-1">
    <title>management.home</title>
    
    
    <style type="text/css">
    
         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
             font-family: 'Hind Siliguri', sans-serif;
        }
    
    </style>

   <!--  <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Hind Siliguri', sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
            background-color: whitesmoke;
            position: relative;
            background-color: #00175f;

        }

        nav {
            width: 100%;
            position: absolute;
            top: 5px;
            height: 50px;
            border: 1px solid white;
            background-color: rgb(25, 25, 128);
        }

        .logo {
            width: 6%;
            height: 45px;
            background-image: url('https://www.iplt20.com/assets/images/ipl-logo-new-old.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;

            position: absolute;
            top: 2px;

        }

        nav>marquee {

            width: 90%;

            position: absolute;
            left: 8%;

            font-size: 20px;
            font-weight: bolder;
            padding-top: 5px;
            color: white;
            font-family: 'Merienda', cursive;


        }

        #msg {
            height: fit-content;
            width: fit-content;
            /* background-color: white; */
            color: darkcyan;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            font-family: 'Noto Serif', serif;
            position: absolute;
            left: 50%;
            /* Use 50% for horizontal centering */
            transform: translateX(-50%);
            /* Move back by half of the element's width */
            top: 70px;
        }


        .wlcm {
            height: fit-content;
            width: fit-content;

            color: darkgreen;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            font-family: 'Merienda', cursive;

            position: absolute;
            left: 500px;
            top: 115px;

            left: 50%;
            /* Use 50% for horizontal centering */
            transform: translateX(-50%);
            /* Move back by half of the element's width */
        }

        button {
            text-decoration: none;
            background-color: #3498db;
            color: white;
            font-weight: bold;
            height: 35px;
            /* Adjusted for better visibility and touch-friendly */
            width: 130px;
            font-size: 16px;
            /* Slightly reduced font size for better readability */
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            top: 160px;
            font-family: 'Roboto', sans-serif;
            border: none;
            border-radius: 5px;
            /* Adds a subtle rounded corner */
            cursor: pointer;
            transition: background-color 0.3s ease;
            /* Smooth transition for better interaction */
        }



        button:hover {
            border: 1px solid #3498db;
            background-color: white;
            color: #3498db;
        }


        .msd-img {
            height: 450px;
            width: 250px;
            background-image: url('https://i.pinimg.com/originals/2b/32/9f/2b329fbb448f69b1de0405027dd4c51e.jpg');
            filter: brightness(80%);
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            border-radius: 10px;
            position: absolute;
            top: 90px;
            left: 30px;
            box-shadow: -10px 10px 15px rgb(140, 140, 140);
        }

        .rohit-img {
            height: 450px;
            width: 250px;
            background-image: url('https://i.pinimg.com/originals/3c/fc/48/3cfc48484f9ec406f1da78cccb721fcf.jpg');
            filter: brightness(80%);
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            border-radius: 10px;
            position: absolute;
            top: 90px;
            left: 1250px;
            box-shadow: 10px 10px 15px rgb(140, 140, 140);
        }


        .captain-img {
            height: 350px;
            width: 700px;
            background-image: url('https://staticg.sportskeeda.com/editor/2023/03/0331c-16801766950735-1920.jpg');
            filter: brightness(90%);
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            border-radius: 10px;
            position: absolute;
            top: 220px;
            left: 420px;
            box-shadow: 0px 0px 5px rgb(140, 140, 140);
        }



        footer {
            height: 100px;
            width: 100%;
            background-color: black;
            position: absolute;
            top: 590px;
            margin: 0 auto;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        footer>.text {
            height: fit-content;
            width: fit-content;
            border: black 1px solid;
            color: white;
        }
    </style>
    
    -->
</head>

<body>

    <nav>
        <div class="logo"></div>
        <marquee>The acronym IPL stands for the Indian Premier League, which is organized by the Board of Control for Cricket in India (BCCI)</marquee>
    </nav>

    <div id="msg">${msg}</div>
    <div class="wlcm">Welcome To Management Home</div>

    <a href="viewallteam"><button>View All Team</button></a>
    
    <a href="viewallplayers"><button>View All Players</button></a>

    <div class="msd-img"></div>
    <div class="rohit-img"></div>
    <div class="captain-img"></div>


    <footer>

        <div class="text">
            Copyright © IPL 2023 All Rights Reserved.
        </div>


    </footer>
</body>

</html>