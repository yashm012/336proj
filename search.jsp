<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Search Schedules - Train Reservation System</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 20px;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <h1>Search Train Schedules</h1>
    <form action="searchResults.jsp" method="get">
        <p>
            <label for="origin">Origin:</label>
            <input id="origin" name="origin" type="text" required>
        </p>
        <p>
            <label for="destination">Destination:</label>
            <input id="destination" name="destination" type="text" required>
        </p>
        <p>
            <label for="date">Date of Travel:</label>
            <input id="date" name="date" type="date" required>
        </p>
        <button type="submit">Search</button>
    </form>
    <p><a href="dashboard.jsp">Back to Dashboard</a></p>
</body>
</html>