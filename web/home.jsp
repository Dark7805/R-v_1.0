<%-- 
    Document   : home.jsp
    Created on : 10 Nov 2024, 12:23:38 pm
    Author     : Dark
--%>

<%@page import="conn.Conn"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
   <link rel="stylesheet" href="style.css">

   <style>
    .hero {
    background: url('https://preview.colorlib.com/theme/marco/img/hero-bg.jpg.webp') no-repeat center center/cover  !important;
    /* background: rgba(0,0,0,0.5); */
    color: #fff;
    text-align: center;
    padding: 100px 0;
}



    /* Basic Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    background-color: #f8f8f8;
    color: #333;
}

/* Navigation */
header {
    background-color: #fff;
    color: black;
    padding: 20px 0;
}
.logo{
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 7px;
}
.logo span{
    background: linear-gradient(50deg, #fb3c00, #ffb800);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    font-size: 23px;
    font-style: bold;
    font-weight: bold;
}
nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 90%;
    margin: 0 auto;
}

nav .logo h1 {
    font-size: 1.8em;
}

nav .nav-links {
    list-style: none;
    display: flex;
}

nav .nav-links li {
    margin: 0 15px;
    background-color: #ffb800;
    padding: 5px 15px;
    border-radius: 5px;
 
}

nav .nav-links li:hover{
    background-color: #fda60d;
}

nav .nav-links a {
    
    text-decoration: none;
    font-size: 1em;
    color: white;
    font-weight: bold;
}
nav .nav-links a:hover
{
    text-decoration: none;
}

 

/* Hero Section */
.hero {
    /* background: url('https://via.placeholder.com/1200x600') no-repeat center center/cover; */
    background: rgba(0,0,0,0.5);
    color: #fff;
    text-align: center;
    padding: 100px 0;
}

.hero h2 {
    font-size: 2.5em;
    margin-bottom: 10px;
}

.hero p {
    font-size: 1.2em;
    margin-bottom: 20px;
}

.hero .cta-btn {
    background-color: #ffb800;
    color: #fff;
    padding: 10px 20px;
    font-size: 1.1em;
    text-decoration: none;
    border-radius: 5px;
}

.hero .cta-btn:hover {
    background-color: #fda60d;
}

/* Menu Section */
.menu {
    text-align: center;
    padding: 50px 20px;
}

.menu h2 {
    font-size: 2.5em;
    margin-bottom: 30px;
}

.menu-items {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    overflow: hidden;
}

.menu-item {
    background-color: #fff;
    width: 250px;
    padding: 20px;
    margin: 15px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    border-radius: 8px;
}

.menu-item img {
    width: 100%;
    border-radius: 8px;
    margin-bottom: 15px;
}

.menu-item img:hover{
    transform: scale(1.03);
    transition: .6s;
}

.menu-item h3 {
    font-size: 1.5em;
    margin-bottom: 10px;
}

.menu-item p {
    font-size: 1.1em;
    margin-bottom: 10px;
}

.menu-item span {
    font-weight: bold;
    color: #ff6347;
}
  
.menu-item .price-check{
    display: flex;
    gap: 10px;
    justify-content: center;
    align-items: center;

}

.submit-btn{
    padding: 20px 0px;
}

.submit-btn input{
    margin: 0 15px;
    background-color: #ffb800;
    padding: 9px 15px;
    font-size: 16px;
    border-radius: 5px;
    font-weight: bold;
    border: navajowhite;
    color: whhite;
    color: white;
}


.submit-btn input:hover{
   cursor: pointer;
}

/* About Section */
.about {
    padding: 50px 20px;
    text-align: center;
    background-color: #f4f4f4;
}

.about h2 {
    font-size: 2.5em;
    margin-bottom: 20px;
}

.about p {
    font-size: 1.2em;
    max-width: 800px;
    margin: 0 auto;
}

/* Contact Section */
.contact {
    padding: 50px 20px;
    text-align: center;
}

.contact h2 {
    font-size: 2.5em;
    margin-bottom: 20px;
}

.contact p {
    font-size: 1.2em;
    margin-bottom: 10px;
}

/* Footer */
footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 10px 0;
}

footer p {
    font-size: 1em;
}

/* Mobile Responsiveness */
@media (max-width: 768px) {
    .menu-items {
        flex-direction: column;
        align-items: center;
    }

    .menu-item {
        width: 90%;
        margin: 20px 0;
    }

    nav .nav-links {
        flex-direction: column;
        align-items: center;
        margin-top: 15px;
    }

    nav .nav-links li {
        margin: 10px 0;
    }
  
}



</style>
</head>



<body>

    <!-- Navigation -->
    <header>
        <nav>
            <div class="logo">
                <img src="https://technext.github.io/foodwagon/v1.0.0/assets/img/gallery/logo.svg" alt="">
                <span>foodwaGon</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="index.html">Logout</a></li>
               
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
 
        <div class="hero-content">
            <h2>Welcome to Our Restaurant</h2>
            <p>Enjoy delicious meals made with fresh ingredients.</p>
            <a href="#menu" class="cta-btn">Explore Menu</a>
        </div>
    </section>

    <!-- Menu Section -->
    <section id="menu" class="menu">
        <h2>Our Menu</h2>
        <form action="cart" method="post">
                <div class="menu-items">
                    <%
                     
//                      if(request.getAttribute("username")==null){
//                          response.sendRedirect("index.html");
//                        }
                    %>
               
               
                    <%
                        List<String[]>  list=Conn.displayAll();
                        for(String[] row : list){
                    %>
                    
                    <div class="menu-item">
                    <img src="<%=row[3]%>" alt="Dish 1">
                    <h3><%=row[1]%></h3>
                    
                    <div class="price-check">
                        <span>$<%=row[2]%></span>
                        <div class="check_box">
                            <input type="checkbox" value="<%=row[0]%>" name="chkbox" id="">
                        </div>
                    </div>
                </div>
               
                     <%}%>
                


                
            </div>
            <div class="submit-btn">
                <input type="submit" value="Checkout">
            </div>
            </form>

               
            
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <h2>About Us</h2>
        <p>We are a family-owned restaurant serving the best food made with fresh and local ingredients. Our mission is to provide high-quality meals and a wonderful dining experience.</p>
    </section>

     

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 All rights reserved.</p>
    </footer>

</body>

</html>

