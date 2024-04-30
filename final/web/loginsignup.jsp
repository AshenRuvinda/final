<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login & Registration Form</title>
  <link rel="stylesheet" href="css/loginsignup.css">
</head>
<body>
  <div class="container">
    <input type="checkbox" id="check">
    <div class="login form">
      <header>Login</header>
      <form action="#" id="login-form">
        <input type="text" placeholder="Enter your name" id="login-name">
        <input type="password" placeholder="Enter your password" id="login-password">
        <a href="#">Forgot password?</a>
        <input type="button" class="button" value="Login" onclick="submitLoginForm();">
      </form>
      <div class="signup">
        <span class="signup">Don't have an account?
         <label for="check">Signup</label>
        </span>
      </div>
    </div>
    <div class="registration form">
      <header>Signup</header>
      <form action="#" id="signup-form">
        <input type="text" placeholder="Enter your username" id="signup-username">
        <input type="text" placeholder="Enter your email" id="signup-email">
        <input type="password" placeholder="Create a password" id="signup-password">
        <input type="password" placeholder="Confirm your password" id="confirm-password">
        <input type="button" class="button" value="Signup" onclick="submitSignupForm();">
      </form>
      <div class="signup">
        <span class="signup">Already have an account?
         <label for="check">Login</label>
        </span>
      </div>
    </div>
  </div>

  <script>
    function submitSignupForm() {
      var username = document.getElementById('signup-username').value;
      var email = document.getElementById('signup-email').value;
      var password = document.getElementById('signup-password').value;
      var confirmPassword = document.getElementById('confirm-password').value;

      if (!username.trim()) {
        alert('Username is required.');
        return false;
      }
      if (!email.includes('@')) {
        alert('Please enter a valid email address.');
        return false;
      }
      if (password === '' || confirmPassword === '') {
        alert('Please fill out all the password fields.');
        return false;
      }
      if (password !== confirmPassword) {
        alert('Passwords do not match.');
        return false;
      }
      alert('Signup successful!'); // Placeholder for successful submission
      return false; // Prevent actual submission for demonstration
    }

    function submitLoginForm() {
      var name = document.getElementById('login-name').value;
      var password = document.getElementById('login-password').value;

      if (!name.trim() || !password) {
        alert('Both name and password are required.');
        return false;
      }
      alert('Login successful!'); // Placeholder for successful login
      return false; // Prevent actual submission for demonstration
    }
  </script>
</body>
</html>
