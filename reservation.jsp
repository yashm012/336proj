<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Make Reservation - Train Reservation System</title>
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
    <h1>Make Reservation</h1>
    <form action="makeReservation" method="post">
        <input type="hidden" name="scheduleId" value="${param.scheduleId}">
        <p>
            <label for="type">Trip Type:</label>
            <select id="type" name="type" required>
                <option value="one-way">One Way</option>
                <option value="round-trip">Round Trip</option>
            </select>
        </p>
        <p>
            <label for="discount">Discount Type:</label>
            <select id="discount" name="discount">
                <option value="none">No Discount</option>
                <option value="child">Child</option>
                <option value="senior">Senior</option>
                <option value="disabled">Disabled</option>
            </select>
        </p>
        <button type="submit">Make Reservation</button>
    </form>
    <p><a href="searchResults.jsp">Back to Search Results</a></p>
</body>
</html>