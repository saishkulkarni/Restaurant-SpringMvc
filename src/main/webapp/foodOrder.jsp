<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Food</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images2.alphacoders.com/862/862730.jpg');
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
            background-color: rgba(0, 0, 0, 0.7);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #fff;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        h3 {
            color: #ffd700;
            margin-bottom: 0.5rem;
        }

        input[type="text"] {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        button {
            background-color: #04AA6D;
            color: white;
            padding: 0.75rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #038f5d;
        }

        .back-link {
            display: inline-block;
            margin-top: 1rem;
            padding: 0.75rem 1rem;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .back-link:hover {
            background-color: #2980b9;
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
        <h1>Order Food</h1>
        <form:form action="foodOrder2" modelAttribute="foodOrder">
            <h3>Name:</h3>
            <form:input path="name" placeholder="Enter your name"/>
            
            <h3>Phone No:</h3>
            <form:input path="mob" placeholder="Enter your phone number"/>
            
            <button type="submit">Register</button>
        </form:form>
        <a href="userNavigation.jsp" class="back-link">Back</a>
    </div>
</body>
</html>
