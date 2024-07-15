<!DOCTYPE html>
<html lang="en">
<head>
    <title>Logout Page</title>
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
        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <button id="logoutButton">Log Out</button>

    <script>
    document.getElementById("logoutButton").addEventListener("click", function() {
        // In a real application, you would perform logout actions here,
        // such as clearing session data or calling a logout API
        
        // For this example, we'll simply redirect back to the login page
        window.location.href = 'index.jsp';
    });
    </script>
</body>
</html>