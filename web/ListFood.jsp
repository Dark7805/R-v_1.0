<%@page import="conn.Conn"%>
<%@page import="java.util.List"%>
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
  
    .table-cart {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
     
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
    .delete-btn {
      padding: 8px 12px;
      background-color: #ed4924;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .delete-btnt:hover {
      background-color: #ed4924;
    }
    .add-btn{
        text-align: center;
        margin-bottom: 20px;
    }
    .add-btn a{
        margin: 0 15px;
    background-color: #ffb800;
    padding: 9px 15px;
    text-decoration: none;
    font-size: 16px;
    border-radius: 5px;
    font-weight: bold;
    border: navajowhite;
    color: whhite;
    color: white;
    }
    .head{
        text-align: center;
        padding: 20px;
    }
    .edit-btn{
        padding: 8px 12px;
      background-color: #7bed24;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
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
                        <a href="#">Logout</a>
                    </li>
                   
                </ul>
            </nav>
        </header>
    </div>

    <div class="head">
        <h1>List Food</h1>
    </div>
   
    <div class="table-cart">
        
  <table>
    
    <thead>
      <tr>
        <th>Food Image</th>
        <th>Food Name</th>
        <th>Price</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        
        <%
                        List<String[]>  list=Conn.displayAll();
                        for(String[] row : list){
                    %>
      <tr>
        <td><img src="<%=row[3]%>" alt="Product Image 1"></td>
        <td><%=row[1]%></td>
     
        <td><%=row[2]%></td>
        <td>
            <button class="edit-btn">V</button>
            <button class="delete-btn">x</button>
        </td>
      </tr>
      
      <%}%>
      
    </tbody>
  </table>
  
    </div>
    <div class="add-btn">
        
        <a href="addFood.jsp">Add</a>
    </div>

   
 

     

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 All rights reserved.</p>
    </footer>

</body>

</html>
