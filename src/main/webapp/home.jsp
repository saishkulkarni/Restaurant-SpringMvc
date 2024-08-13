<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://wallpapercave.com/wp/wp1874156.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            color: white;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            font-style: italic;
            margin-bottom: 30px;
        }

        .admin-title {
            font-weight: bold;
            font-size: 2.5em;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        .message {
            color: #4CAF50;
            font-style: italic;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        nav {
            background-color: rgba(51, 51, 51, 0.8);
            border-radius: 5px;
            overflow: hidden;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
        }

        nav li {
            flex-grow: 1;
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
            background-color: rgba(17, 17, 17, 0.8);
        }

        .active {
            background-color: #04AA6D;
        }

        @media screen and (max-width: 768px) {
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
        <h1 class="admin-title">ADMIN PAGE</h1>
        <p class="message">${msg}</p>
        <nav>
            <ul>
                <li><a class="active" href="loginUser.jsp">Login User</a></li>
                <li><a href="loadUser">Add User</a></li>
                <li><a href="loadProduct">Add Product</a></li>
                <li><a href="productList">Product List</a></li>
                <li><a href="userList">User List</a></li>
                <li><a href="index.jsp">Logout</a></li>
            </ul>
        </nav>
    </div>
</body>
</html>
