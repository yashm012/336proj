<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Reservations - Train Reservation System</title>
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
    <h1>My Reservations</h1>
    <h2>Current Reservations</h2>
    <table>
        <tr>
            <th>Reservation Number</th>
            <th>Date</th>
            <th>Origin</th>
            <th>Destination</th>
            <th>Action</th>
        </tr>
        <c:forEach var="reservation" items="${currentReservations}">
            <tr>
                <td>${reservation.reservationNumber}</td>
                <td>${reservation.date}</td>
                <td>${reservation.origin}</td>
                <td>${reservation.destination}</td>
                <td>
                    <form action="cancelReservation" method="post">
                        <input type="hidden" name="reservationId" value="${reservation.id}">
                        <button type="submit">Cancel</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
        
    <h2>Past Reservations</h2>
    <table>
        <tr>
            <th>Reservation Number</th>
            <th>Date</th>
            <th>Origin</th>
            <th>Destination</th>
        </tr>
        <c:forEach var="reservation" items="${pastReservations}">
            <tr>
                <td>${reservation.reservationNumber}</td>
                <td>${reservation.date}</td>
                <td>${reservation.origin}</td>
                <td>${reservation.destination}</td>
            </tr>
        </c:forEach>
    </table>
    <p><a href="dashboard.jsp">Back to Dashboard</a></p>
    
</body>
</html>