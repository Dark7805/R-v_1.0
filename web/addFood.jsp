<!DOCTYPE html>
<html lang="en">
         <%
//                      if(request.getAttribute("username")==null){
//                          response.sendRedirect("index.html");
//                        }
                    %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
   <link rel="stylesheet" href="style.css">

   <style>
    .main{
        height: 100vh;
    }
    .frm{
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #f4f4f4;
    }
    .form-container {
      width: 600px;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }
    .form-container h2 {
      text-align: center;
      color: #333;
    }
    .form-group {
      margin-bottom: 15px;
    }
    label {
      display: block;
      margin-bottom: 5px;
      color: #555;
    }
    input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 16px;
    }
    .submit-btn {
      width: 100%;
      padding: 10px;
      background-color: #ffb800;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }
    .submit-btn:hover {
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
                <ul class="nav-links">
                  <li>
                      <a href="#">Logout</a></li>
                 
              </ul>
                 
            </nav>
        </header>

        <div class="frm">
            <div class="form-container">
                <h2>Add Product</h2>
                <form action="addFood" method="post" >
                  <div class="form-group">
                    <label for="name">Product Name:</label>
                    <input type="text" id="name" name="name" required>
                  </div>
                  <div class="form-group">
                    <label for="price">Price:</label>
                    <input type="number" id="price" name="price" required>
                  </div>
                  <div class="form-group">
                    <label for="image">Product Image:</label>
                    <input type="text" id="image" name="image" required>
                  </div>
                  <button type="submit" class="submit-btn">Add Product</button>
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
