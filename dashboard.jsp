<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dashboard - Train Reservation System</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 20px;
        }
        nav {
            margin-bottom: 20px;
        }
        nav a {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h1>Welcome, ${sessionScope.user.username}</h1>
    <nav>
        <a href="search.jsp">Search Schedules</a>
        <a href="myReservations.jsp">My Reservations</a>
        <c:if test="${sessionScope.user.role == 'admin'}">
            <a href="adminDashboard.jsp">Admin Dashboard</a>
        </c:if>
        <c:if test="${sessionScope.user.role == 'rep'}">
            <a href="repDashboard.jsp">Rep Dashboard</a>
        </c:if>
        <a href="logout.jsp">Logout</a>
    </nav>
    <p>What would you like to do today?</p>
</body>
</html>