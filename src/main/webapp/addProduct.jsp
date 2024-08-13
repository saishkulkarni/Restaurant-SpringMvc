<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Product</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
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

        input[type=text] {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1rem;
            border: 1px solid #bdc3c7;
            border-radius: 4px;
            font-size: 1rem;
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
        <h1>Add Product</h1>
        <form:form action="saveProduct" modelAttribute="productDTO">
            <h3>Name:</h3>
            <form:input path="name" placeholder="Enter product name"/>
            
            <h3>Type:</h3>
            <form:input path="type" placeholder="Enter product type"/>
            
            <h3>Cost:</h3>
            <form:input path="cost" placeholder="Enter product cost"/>
            
            <button type="submit">Submit</button>
        </form:form>
    </div>
</body>
</html>
