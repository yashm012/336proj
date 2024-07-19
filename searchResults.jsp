<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Search Results - Train Reservation System</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 20px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Search Results</h1>
    <table>
        <tr>
            <th>Train Number</th>
            <th>Departure Time</th>
            <th>Arrival Time</th>
            <th>Fare</th>
            <th>Action</th>
        </tr>
        <c:forEach var="schedule" items="${schedules}">
            <tr>
                <td>${schedule.trainNumber}</td>
                <td>${schedule.departureTime}</td>
                <td>${schedule.arrivalTime}</td>
                <td>${schedule.fare}</td>
                <td><a href="reservation.jsp?scheduleId=${schedule.id}">Make Reservation</a></td>
            </tr>
        </c:forEach>
    </table>
    <p><a href="search.jsp">New Search</a></p>
    <p><a href="dashboard.jsp">Back to Dashboard</a></p>
</body>
</html>