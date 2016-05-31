
<%@page import="cart.cart"%>
<%@page import="user.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DOPPLER SHOP</title>
        <jsp:useBean class="product.product" id="product" scope="session"></jsp:useBean>

        <%@page import="java.sql.*, database.*" %>
        <link rel="shortcut icon" href="images/logo/ico.png"/>
        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <link rel="stylesheet" type="text/css" href="css/lightbox.css"  />

        <link rel="stylesheet" type="text/css" href="css/styles.css"/>

        <script src="js/jquery-1.7.2.min.js"></script>
        <script src="js/lightbox.js"></script>
        
        <style type="text/css">
            
            #leftside {
                cursor: pointer;
                position: fixed;
            }
        </style>
  
        
    </head>
    <body>
        
         <%
        if (session.getAttribute("user") == null ){// THen new user, show join now
            %>
            <div id = "topWrapper">
    <div class="container_16">
        <div class="grid_16">
            <div id="logo" class="grid_6"> <a href="index.jsp"><img src="images/logo/dope.png" /></a>
            </div>
        </div>
    </div>
</div>
        <%
        }else {
            %>
            <jsp:include page="includesPage/_logout.jsp"></jsp:include>
        <%
        }
           user User;
            String printName = null;
            if ((session.getAttribute("user") == null)) {
                response.sendRedirect("index.jsp");
            } else {
                User = (user) session.getAttribute("user");
                String email = User.getUserEmail();
                String userName = User.getUsername();
                int uid = User.getUserId();

                if (userName == null){
                    printName = email;
                }
                else {
                    printName = userName;
                }
           
        %>

        <jsp:include page="includesPage/_search_navigationbar.jsp"></jsp:include>
  

        <div class="container_16">
     
            <div class="grid_13 push_3" id="whiteBox">
                <div  class="grid_13">
                    <h1  style ="text-align: center; padding: 10px 0px 0px 0px;">Hello <%= printName %></h1>  
                    <p  style ="text-align: center;"> 
                       Enter your personal information for your Account :) 
                    </p>
                </div>
            </div>
                
            
                <div id="whiteBox" class="grid_13 push_3">
                    
                 <div  style ="text-align: center; border-top: 20px #444 solid; padding: 10px 0px 10px 0px;" class="grid_12 MyOrders">
                        
                     <h1 style ="padding: 10px 0px 10px 0px;">User's Account</h1>  
                    
                 </div>
                 <div class="clear"></div>
                    
                        <%
                            if (User.getUsername() == null) {
                                %>
                        <form method="post" action="addUserDetalsServlet">
                            <div class="grid_3">
                                Name
                            </div>
                            <div class="grid_5">
                                <input type="text" name="username" required/>
                            </div>
                            <div class="clear"></div><br/>
                            <div class="grid_3">
                                Age
                            </div>
                            <div class="grid_5">
                               <input type="text" name="age" required/>
                            </div>
                            <div class="clear"></div><br/>
                            <div class="grid_3">
                                Gender
                            </div>
                            <div class="grid_5">
                                <select name="gender" required>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                            </div>
                            <div class="clear"></div><br/>
                            <div class="grid_3">
                                Mobile No
                            </div>
                            <div class="grid_5">
                                <input type="text" name="mobileNum" maxlength="10" required/>
                            </div>
                            <div class="clear"></div><br/>
                            <div class="grid_3">
                                Address
                            </div>
                            <div class="grid_5">
                                <textarea name="address" required></textarea>
                            </div>
                            <div class="clear"></div><br/>
                            
                            <div class="grid_3">
                                City
                            </div>
                            <div class="grid_5">
                                <input type="text" value="Jaipur" disabled/><br/> only JP <br/><br/>
                                <input type="submit" id="greenBtn" value="Add Details"/>
                            </div>
                            <div class="clear"></div><br/>
                        </form>
                            <%
                            }else {
                                       %>
                      <form method="post" action="addUserDetalsServlet">
                            <div class="grid_3">
                                Name
                            </div>
                            <div class="grid_5">
                                <input type="text" name="username" value="<%= User.getUsername()%>" required/>
                            </div>
                            <div class="clear"></div><br/>
                            <div class="grid_3">
                                Gender
                            </div>
                            <div class="grid_5">
                                <select name="gender" required>

                                    <%
                                        if ((User.getGender()).equals("male")) {
                                    %>
                                    <option value="male" selected>Male</option>
                                    <option value="female">Female</option>
                                    <%        } else {
                                    %>
                                    <option value="male">Male</option>
                                    <option value="female" selected >Female</option>

                                    <%                      
                                    }
                                    %>
                                </select>
                            </div>
                            <div class="clear"></div><br/>
                            <div class="grid_3">
                                Mobile No
                            </div>
                            <div class="grid_5">
                                <input type="text" name="mobileNum"  value="<%= User.getMobileNum()%>" required/>
                            </div>
                            <div class="clear"></div><br/>
                            <div class="grid_3">
                                Address
                            </div>
                            <div class="grid_5">
                                <textarea name="address" required><%= User.getAddress()%></textarea>
                            </div>
                            <div class="clear"></div><br/>
                            <div class="grid_3">
                                City
                            </div>
                            <div class="grid_5">
                                <input type="text" value="Jaipur" disabled/><br/> 
                                <input type="submit" id="greenBtn" value="Change Account Info"/>
                            </div>
                            <div class="clear"></div><br/>
                        </form>
                        <% 
                            }
                        %>
                        
                    </div>
                 <div class="clear"></div>
                 
              
                 <div class="clear"></div>
                </div>
        
        <%
        //This is else closing of the top if checking of User Logged In...
        }        
%>
        <jsp:include page="includesPage/_footer.jsp"></jsp:include>
    </body>
</html>
