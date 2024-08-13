<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add User</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url('https://wallpaperaccess.com/full/271686.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        h3 {
            color: #34495e;
            margin-bottom: 0.5rem;
        }

        input[type=text], input[type=password], input[type=email] {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1rem;
            border: 1px solid #bdc3c7;
            border-radius: 4px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        button {
            background-color: #2ecc71;
            color: white;
            padding: 0.75rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #27ae60;
        }

        @media screen and (max-width: 480px) {
            .container {
                padding: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add User</h1>
        <form:form action="saveUser" modelAttribute="userDTO">
            <h3>Name:</h3>
            <form:input path="name" placeholder="Enter your name"/>
            
            <h3>Email:</h3>
            <form:input path="email" type="email" placeholder="Enter your email"/>
            
            <h3>Password:</h3>
            <form:input path="password" type="password" placeholder="Enter your password"/>
            
            <button type="submit">Submit</button>
        </form:form>
    </div>
</body>
</html>
