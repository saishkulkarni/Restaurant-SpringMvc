<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bill</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url('https://www.expatrio.com/sites/default/files/styles/image_slider/public/2022-05/hermes-rivera-Ww8eQWjMJWk-unsplash_3.jpg?itok=aqyA4cvZ');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
        }

        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 1rem;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .total-row {
            font-weight: bold;
        }

        .logout-btn {
            display: inline-block;
            margin-top: 1rem;
            padding: 0.75rem 1rem;
            background-color: #e74c3c;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #c0392b;
        }

        @media screen and (max-width: 600px) {
            table, tr, td {
                display: block;
            }

            tr {
                margin-bottom: 0.625em;
            }

            td {
                border: none;
                position: relative;
                padding-left: 50%;
            }

            td:before {
                content: attr(data-label);
                position: absolute;
                left: 6px;
                width: 45%;
                padding-right: 10px;
                white-space: nowrap;
                font-weight: bold;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bill</h1>
        <table>
            <tr>
                <th>Ordered By:</th>
                <td>${foodOrder.getName()}</td>
            </tr>
            <tr>
                <th>Mobile Number:</th>
                <td>${foodOrder.getMob()}</td>
            </tr>
        </table>

        <table>
            <tr>
                <th>Item Name</th>
                <th>Item Quantity</th>
                <th>Item Cost</th>
            </tr>
            <c:forEach var="item" items="${foodOrder.getItemDTOs()}">
                <tr>
                    <td data-label="Item Name">${item.getName()}</td>
                    <td data-label="Item Quantity">${item.getQuantity()}</td>
                    <td data-label="Item Cost">${item.getCost()}</td>
                </tr>
            </c:forEach>
            <tr class="total-row">
                <td colspan="2" style="text-align: right;">Total:</td>
                <td>${foodOrder.getCost()}</td>
            </tr>
        </table>

        <a href="logout" class="logout-btn">Logout</a>
    </div>
</body>
</html>
