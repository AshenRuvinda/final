<%-- 
    Document   : profile
    Created on : Apr 30, 2024, 2:06:40 PM
    Author     : THoRx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Oswald:wght@400;700&display=swap');

        body {
            font-family: 'Oswald', sans-serif; /* Change the font-family to Oswald */
            margin: 0;
            padding: 0;
            background-image: url('bg.jpg'); /* Specify the path to your background image */
            background-size: cover; /* Cover the entire background */
            color: #333;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Add opacity to the background color */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .profile-picture {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 20px;
            border: 3px solid #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .username {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }
        .address {
            margin-bottom: 20px;
        }
        .welcome-message {
            font-size: 24px;
            margin-bottom: 20px;
        }
        #change-pic-input {
            display: none;
        }
        #change-pic-btn {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease;
            font-family: 'Oswald', sans-serif; /* Change the font-family to Oswald */
        }
        #change-pic-btn:hover {
            background-color: #45a049;
        }
        #back-to-dashboard {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            font-size: 16px;
            border: 2px solid #007bff;
            padding: 10px 20px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        #back-to-dashboard:hover {
            background-color: #007bff;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="welcome-message">Welcome to Your Profile</h1>
        <img id="profile-pic" src="profilepic.png" alt="Profile Picture" class="profile-picture">
        <div class="username">Username: JohnDoe</div>
        <div class="address">Address: 123 Main St, Cityville</div>
        <button id="change-pic-btn">Change Profile Picture</button>
        <input type="file" id="change-pic-input" accept="image/*">
        <a href="dashboard.jsp" id="back-to-dashboard">Back to Dashboard</a>
    </div>

    <script>
        function displaySuccessMessage() {
            alert("Profile picture updated successfully!");
        }

        document.getElementById('change-pic-btn').addEventListener('click', function() {
            document.getElementById('change-pic-input').click();
        });

        document.getElementById('change-pic-input').addEventListener('change', function(event) {
            var file = event.target.files[0];
            if (file) {
                var reader = new FileReader();
                reader.onload = function() {
                    document.getElementById('profile-pic').src = reader.result;
                    displaySuccessMessage(); // Call the function to display success message
                };
                reader.readAsDataURL(file);
            }
        });
    </script>
</body>
</html>
