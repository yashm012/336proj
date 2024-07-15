<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Page</title>
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
    <form id="loginForm">
        <h2>Log in below using your credentials</h2>
        <p>
            <label for="username">Username:</label>
            <input id="username" name="username" type="text" placeholder="johndoe123" required>
        </p>
        <p>
            <label for="password">Password:</label>
            <input id="password" name="password" type="password" required>
        </p>
        <button type="submit">Submit</button>
    </form>

    <script>
    // Simulating a database with user credentials
    const users = [
        { username: "admin123", password: "pass123" },
        { username: "rep456", password: "secret456" }
	    { username: "customer1", password: "user1"}
    ];

    function authenticate(username, password) {
        return users.some(user => user.username === username && user.password === password);
    }

    document.getElementById("loginForm").addEventListener("submit", function(event) {
        event.preventDefault();
        
        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;
        
        if (authenticate(username, password)) {
            // Redirect to the logout page on successful login
            window.location.href = 'logout.jsp';
        } else {
            alert("Invalid username or password. Please try again.");
        }
    });
    </script>
</body>
</html>