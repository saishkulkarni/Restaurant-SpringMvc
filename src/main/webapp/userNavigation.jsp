<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Navigation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://images2.alphacoders.com/862/862730.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .message {
            background-color: rgba(255, 255, 255, 0.8);
            color: #4CAF50;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
        }

        nav {
            background-color: rgba(51, 51, 51, 0.9);
            border-radius: 5px;
            overflow: hidden;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        nav li {
            flex: 1;
            text-align: center;
        }

        nav a {
            display: block;
            color: white;
            text-align: center;
            padding: 20px 0;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        nav a:hover:not(.active) {
            background-color: #111;
        }

        .active {
            background-color: #04AA6D;
        }

        @media screen and (max-width: 600px) {
            nav ul {
                flex-direction: column;
            }

            nav li {
                border-bottom: 1px solid #bbb;
            }

            nav li:last-child {
                border-bottom: none;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">${msg}</div>
        <nav>
            <ul>
                <li><a class="active" href="foodOrder1">Order Food</a></li>
                <li><a href="fetchallorder">All Food Orders</a></li>
                <li><a href="logout">Logout</a></li>
            </ul>
        </nav>
    </div>
</body>
</html>
