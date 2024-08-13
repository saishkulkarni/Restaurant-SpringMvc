<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://media.istockphoto.com/photos/wood-table-top-on-blur-window-glasswall-background-picture-id1129572627?k=20&m=1129572627&s=612x612&w=0&h=Z1fnJQgoiB1bJ5z1MUbiOQPckT7QPAdVQ6nN2guf6_k=');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 100%;
            max-width: 400px;
        }

        .login-header {
            background-color: #04AA6D;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        .login-form {
            padding: 20px;
        }

        .imgcontainer {
            text-align: center;
            margin-bottom: 20px;
        }

        .avatar {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
        }

        .input-group {
            margin-bottom: 15px;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        .login-button {
            background-color: #04AA6D;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .login-button:hover {
            background-color: #038f5d;
        }

        .error-message {
            color: #f44336;
            text-align: center;
            margin-bottom: 15px;
        }

        @media screen and (max-width: 480px) {
            .login-container {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-header">Admin Login</div>
        <form action="loginAdmin" method="post" class="login-form">
            <div class="imgcontainer">
                <img src="https://png.pngtree.com/png-vector/20190301/ourlarge/pngtree-vector-administration-icon-png-image_747092.jpg" alt="Avatar" class="avatar">
            </div>
            <% if(request.getAttribute("msg") != null) { %>
                <div class="error-message">${msg}</div>
            <% } %>
            <div class="input-group">
                <label for="email">Email</label>
                <input type="text" id="email" name="email" placeholder="Enter Email" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter Password" required>
            </div>
            <button type="submit" class="login-button">Login</button>
        </form>
    </div>
</body>
</html>
