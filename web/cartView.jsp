<%@page import="java.util.List"%>
<%@page import="conn.Conn"%>
<!DOCTYPE html>
   <%
//                      if(request.getAttribute("username")==null){
//                          response.sendRedirect("index.html");
//                        }
                    %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
   <link rel="stylesheet" href="style.css">
   <style>
  
    .table-cart {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      background-color: #f4f4f4;
    }
    table {
      width: 80%;
      border-collapse: collapse;
      margin: 20px 0;
      background-color: #fff;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }
    th, td {
      padding: 15px;
      text-align: center;
      border: 1px solid #ddd;
    }
    th {
      background-color: #ffb800;
      color: white;
    }
    tr:hover {
      background-color: #f2f2f2;
    }
   table img {
      width: 100px;
      height: auto;
    }
    .add-to-cart {
      padding: 8px 12px;
      background-color: #ed4924;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .add-to-cart:hover {
      background-color: #ed4924;
    }
    .submit-btn{
        text-align: center;
    }
    .submit-btn a{
        text-decoration: none;
            margin: 0 15px;
    background-color: #ffb800;
    padding: 5px 15px;
    border-radius: 5px;
    color: white
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
    </div>

    <div class="table-cart">

  <table>
    <thead>
      <tr>
        <th>Product Image</th>
        <th>Product Name</th>
     
        <th>Price</th>
        <th>Cancel order</th>
      </tr>
    </thead>
    <tbody>
        
         <%  
                        List<String[]>  list=Conn.displayCart();
                        for(String[] row : list){
                    %>
      <tr>
        <td><img src="<%= row[3] %>" alt="Product Image 1"></td>
        <td><%=row[1]%></td>
        
        <td><%=row[2]%></td>
        <td><a style="text-decoration: none" href="deletecart?fid=<%=row[0]%>" class="add-to-cart">x</a></td>
      </tr>
      
      <%}%>
      
    </tbody>
  </table>
  
    </div>
    <div class="submit-btn">
        <a  href="OrderServ">Order Now</a>
    </div>

   
 

     

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 All rights reserved.</p>
    </footer>

</body>

</html>
