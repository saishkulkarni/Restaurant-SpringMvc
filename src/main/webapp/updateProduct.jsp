<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://www.pixelstalk.net/wp-content/uploads/2016/08/Download-Images-Food-HD.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
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
            color: #333;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin-bottom: 1rem;
        }

        label {
            font-weight: bold;
            color: #4a4a4a;
            margin-bottom: 0.5rem;
            display: block;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1rem;
        }

        input[readonly] {
            background-color: #f0f0f0;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 0.75rem;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
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
        <h1>Update Product</h1>
        <form:form action="updateproduct1" modelAttribute="product">
            <div class="form-group">
                <label for="name">Product Name:</label>
                <form:input path="name" id="name"/>
            </div>
            <div class="form-group">
                <label for="type">Product Type:</label>
                <form:input path="type" id="type"/>
            </div>
            <div class="form-group">
                <label for="cost">Product Cost:</label>
                <form:input path="cost" id="cost" type="number" step="0.01"/>
            </div>
            <div class="form-group">
                <label for="id">Product ID:</label>
                <form:input path="id" id="id" readonly="true"/>
            </div>
            <button type="submit">Update Product</button>
        </form:form>
    </div>
</body>
</html>
