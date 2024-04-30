<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Item</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;700&display=swap">
    <style>
        body, input, textarea {
            font-family: 'Oswald', sans-serif;
            margin: 0;
            padding: 20px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        body {
            background-image: url('bg.jpg');        
        }

        h1 {
            text-align: center;
            color: #fff;
        }
	button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
            transition-duration: 0.4s;
        }

        /* Change background color on hover */
        button:hover {
            background-color: #45a049;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        input[type="text"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        textarea {
            resize: vertical;
            height: 100px;
        }

        input[type="file"] {
            margin-top: 5px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Style the dropdown */
        .select-wrapper {
            position: relative;
            display: inline-block;
        }

        select {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 4px;
            padding: 10px;
            width: calc(100% - 22px); /* Adjust width as needed */
            font-family: 'Oswald', sans-serif;
            font-size: 16px;
            box-sizing: border-box;
            overflow-y: auto;
            height: 45px; /* Set the height as desired */
            width:500px;
            resize: none; /* Disable resizing */
        }

        /* Hide the default arrow */
        select::-ms-expand {
            display: none;
        }

        /* Add arrow icon */
        .select-wrapper::after {
            content: '';
            position: absolute;
            top: 50%;
            right: 8px;
            transform: translateY(-50%);
            width: 0;
            height: 0;
            border-left: 6px solid transparent;
            border-right: 6px solid transparent;
            border-top: 6px solid #333; /* Adjust arrow color */
            pointer-events: none;
        }

        /* Footer */
        footer {
            background-color: #fff;
            color: #000;
            text-align: center;
            padding:0;
           
            bottom: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        footer a {
            color: #000;
            text-decoration: none;
            margin: 0 10px;
            align: center;
        }

        footer a:hover {
            text-decoration: underline;
        }

        footer img {
            height: 110px;
            width: auto;
            margin-right: auto;
            margin-left: 0; /* Updated to move image to left corner */
        }

        .footer-content {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .footer-content {
            text-align: center;
        }

        .footer-content a {
            color: #000;
            text-decoration: none;
            margin: 0 10px;
        }

        .footer-content a:hover {
            text-decoration: underline;
        }
	.button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
            transition-duration: 0.4s;
        }

        /* Change background color on hover */
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>ADD PRODUCTS</h1>
    <form id="itemForm" action="submit_item.php" method="POST" enctype="multipart/form-data">
        <label for="item_name">Item Name:</label>
        <input type="text" id="item_name" name="item_name" placeholder="Item Name">

        <label for="category">Category:</label>
        <div class="select-wrapper">
            <select id="category" name="category">
                <option value="mobile_phone">Mobile Phone</option>
                <option value="camera">Camera</option>
                <option value="laptop">Laptop</option>
                <option value="accessories">Accessories</option>
            </select>
        </div>

        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="4" cols="50" placeholder="Description"></textarea>

        <label for="price">Price:</label>
        <input type="text" id="price" name="price" placeholder="XXX XXX LKR" oninput="this.value = this.value.replace(/[^0-9]/g, '');">

        <label for="item_id">Item ID:</label>
        <input type="text" id="item_id" name="item_id" readomly>

        <label for="image">Image:</label>
        <input type="file" id="image" name="image">

        <input type="submit" value="Submit">
    </form>
	<br>

   <center><a href="dashboard.jsp" class="button">Dashboard</a></center>

<br>

    <footer>
        <img src="logo.png" alt="Company Logo" height="150px" width="150px">
        <div class="footer-content">
            <a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
            <a href="https://github.com"><i class="fab fa-github"></i></a>
            <marquee><h2>&copy; 2024 ElecZone. All Rights Reserved.</h2></marquee>
        </div>
    </footer>

    <script>
        function generateItemId() {
            var letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
            var digits = '0123456789';
            var itemId = '';

            // Generate 3 random letters
            for (var i = 0; i < 3; i++) {
                itemId += letters.charAt(Math.floor(Math.random() * letters.length));
            }

            // Generate 5 random digits
            for (var i = 0; i < 5; i++) {
                itemId += digits.charAt(Math.floor(Math.random() * digits.length));
            }

            return itemId;
        }

        // Set generated item ID when the page loads
        document.addEventListener("DOMContentLoaded", function() {
            document.getElementById("item_id").value = generateItemId();
        });

	function resetFunction() {
        // Add your reset logic here
        alert("Are You Sure...?");
    }
	
   
    </script>
</body>
</html>
