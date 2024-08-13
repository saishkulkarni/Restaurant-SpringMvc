<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://www.expatrio.com/sites/default/files/styles/image_slider/public/2022-05/hermes-rivera-Ww8eQWjMJWk-unsplash_3.jpg?itok=aqyA4cvZ');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #04AA6D;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .btn {
            display: inline-block;
            padding: 8px 12px;
            margin: 2px;
            background-color: #04AA6D;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #038f5d;
        }

        .btn-delete {
            background-color: #f44336;
        }

        .btn-delete:hover {
            background-color: #d32f2f;
        }

        .btn-edit {
            background-color: #2196F3;
        }

        .btn-edit:hover {
            background-color: #1976D2;
        }

        .btn-back {
            display: block;
            width: 100px;
            margin: 20px auto;
            text-align: center;
        }

        @media screen and (max-width: 600px) {
            table {
                font-size: 14px;
            }

            th, td {
                padding: 8px;
            }

            .btn {
                padding: 6px 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Products</h1>
        <table>
            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Product Name</th>
                    <th>Product Type</th>
                    <th>Product Cost</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td>${product.getId()}</td>
                        <td>${product.getName()}</td>
                        <td>${product.getType()}</td>
                        <td>${product.getCost()}</td>
                        <td>
                            <a href="deleteProduct?Id=${product.getId()}" class="btn btn-delete">Delete</a>
                            <a href="updateProduct?Id=${product.getId()}" class="btn btn-edit">Edit</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="home.jsp" class="btn btn-back">Back</a>
    </div>
</body>
</html>
