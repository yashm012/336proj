<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Register - Train Reservation System</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        form {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="registerForm" action="register" method="post">
        <h2>Register New Account</h2>
        <p>
            <label for="username">Username:</label>
            <input id="username" name="username" type="text" required>
        </p>
        <p>
            <label for="password">Password:</label>
            <input id="password" name="password" type="password" required>
        </p>
        <p>
            <label for="role">Role:</label>
            <select id="role" name="role" required>
                <option value="customer">Customer</option>
                <option value="admin">Admin</option>
                <option value="rep">Customer Representative</option>
            </select>
        </p>
        <button type="submit">Register</button>
        <button href="index.jsp">Back to login</button>
    </form>
    
    <script>
    
    </script>
    
</body>
</html>