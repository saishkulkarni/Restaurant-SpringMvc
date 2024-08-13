<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
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

        h1, h2 {
            text-align: center;
            color: #333;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        h2 {
            color: #4CAF50;
            font-style: italic;
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
            background-color: #4CAF50;
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
            padding: 10px 20px;
            margin: 5px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .btn-group {
            text-align: center;
            margin-top: 20px;
        }

        @media screen and (max-width: 600px) {
            table {
                font-size: 14px;
            }

            th, td {
                padding: 8px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>${msg}</h2>
        <h1>MENU</h1>
        <table>
            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Product Name</th>
                    <th>Product Type</th>
                    <th>Product Cost</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td>${product.getId()}</td>
                        <td>${product.getName()}</td>
                        <td>${product.getType()}</td>
                        <td>${product.getCost()}</td>
                        <td><a href="addOrder?Id=${product.getId()}" class="btn">Add</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="btn-group">
            <a href="submitOrder" class="btn">Submit</a>
            <a href="userNavigation.jsp" class="btn">Back</a>
            <a href="logout" class="btn">Logout</a>
        </div>
    </div>
</body>
</html>
