 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <link rel="stylesheet" href="style.css">

    <style>
        .main {
            height: 100vh;
        }
    .log-frm {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #f4f4f4;
    }
    .login-container {
      width: 500px;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }
    .login-container h2 {
      text-align: center;
      color: #333;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 15px;
    }
    label {
      display: block;
      margin-bottom: 5px;
      color: #555;
    }
    input[type="text"], input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 16px;
    }
    .login-btn {
      width: 100%;
      padding: 10px;
      background-color: #ffb800;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }
    .login-btn:hover {
      background-color: #ffb800;
    }
    </style>

</head>

<body>

    <!-- Navigation -->
    <div class="main">
        <header>
            <nav>
                <div class="logo">
                    <img src="https://technext.github.io/foodwagon/v1.0.0/assets/img/gallery/logo.svg" alt="">
                    <span>foodwaGon</span>
                </div>
                 
            </nav>
        </header>


     <div class="log-frm">
        <div class="login-container">
            <h2>Login</h2>
            <form action="login" method="post">
                <div class="form-group">
                    <label for="user-id">User ID:</label>
                    <input type="text" id="user-id" name="name" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="pass" required>
                </div>
                <button type="submit" class="login-btn">Login</button>
            </form>
        </div>
     </div>


    </div>









    <!-- Footer -->
    <footer>
        <p>&copy; 2024 All rights reserved.</p>
    </footer>

</body>

</html>