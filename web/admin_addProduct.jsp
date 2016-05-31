
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DOPPLER SHOP</title>
    
        <%@page import="java.sql.* ,Admin.*"%>
         <jsp:useBean id="cart" scope="session" class="cart.cart"></jsp:useBean>

<%@page import="java.util.ArrayList"%>

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


            .buy {
                margin-top:7px;
                margin-bottom:15px;
                float:right;
                padding:5px;
                color:#000;
                text-shadow: 0 1px 0 white;
                padding:10px;
                border-radius:5px;
                background: -webkit-linear-gradient(top, #aee800, #8fbe00);
                background: -moz-linear-gradient(top, #aee800, #8fbe00);
                text-align:center;
                box-shadow: 0 1px 4px rgba(0, 0, 0, 0.27);
                -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.27);
                -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.27);

            }
            .buy:hover {
                float:right;
                color:#000;
                border-radius:7px;
                text-shadow: 0 -1px 0 white;
                text-align:center;
                padding:10px;
                background: -webkit-linear-gradient(top, #8fbe00,#aee800);
                background: -moz-linear-gradient(top, #8fbe00,#aee800);
                box-shadow: 0 1px 4px rgba(0, 0, 0, 0.4);
            }


            .highlight {
                box-shadow: inset -10px 0px 10px #666;
                background: #E0E0E0;
                border-radius: 0px 27px 27px 0px;
            }
            .adminMenu {
                margin-top: 10px;
                margin-bottom: 10px;
                margin-right: 0px;
                background: #FFF;
                box-shadow: 0px 0px 10px #333;
            }
            .adminMain {
                margin-top: 10px;
                margin-bottom: 10px;
                background: #FFF;
                box-shadow: 0px -1px 10px #333;
            }
            #leftside {
                cursor: pointer;
            }
        </style>
    </head>
    <body>

         <%
        if (session.getAttribute("admin") != null ){// THen new user, show join now
            %>
            <div id = "topWrapper">
    <div class="container_16">
        <div class="grid_16">
            <div id="logo" class="grid_6"> <a href="index.jsp"><img src="images/logo/dope.png" /></a>
                  </div>
            <a href="logoutServlet"><li id="greenBtn" class ="Btn showForm"> Admin Logout</li></a>
           
        </div>
    </div>
</div>
        <%
        }else {
            %>
            <jsp:include page="includesPage/_logout.jsp"></jsp:include>
        <%
        }
       
        if (session.getAttribute("admin")== null){
            response.sendRedirect("admin_.jsp");
        }
        %>

       
                    <div class="clear"></div>
                
                    <div id="leftside" class="grid_3" style="margin-left:50px;margin-right: -20px;">
                    <ul id="leftsideNav">
                        <li><a href="admin_addProduct.jsp">Add Product</a></li>
                    </ul>
                </div> 
            <%
               
                   ArrayList<String> cat=new ArrayList();
                cat=cart.getPro();
                
                    ArrayList<String> com=new ArrayList();
                      com=cart.getComp();
            ArrayList<String> subcat=new ArrayList();
                      subcat=cart.getComp();
            
            %>
            
            

            <div class="grid_13"  style="padding: 10px 0px; width:860px;margin-left: 100px;" id="whiteBox">
                <div class="grid_13">
                    <br/><h1>Select Product Company</h1><hr/>
                </div>
                <div class="clear"></div>
                <form method="post" action="adminInsertDetails">
                  <div class="grid_2">
                        <h3>Select Company</h3>
                    </div>
                    <div class="grid_5">
                        <select name="company" id="company">

                            <option value="" selected>Select a Company</option>

                            <%
                        for(int i=0;i<com.size();i++){
                            %>

                            <option value="<%= com.get(i)%>"><%= com.get(i)%></option>

                            <%
                                }
                            %>


                        </select>
                    </div>
                    <div class="clear"></div><br/>

                     <br/><h1>Select Product Category</h1><hr/>

                    <div class="grid_2">
                        <h3>Select Category</h3>
                    </div>
                    <div class="grid_5">
                        <select id="selectMenuCategory" name="category">
                            <option value="" selected="">Select Category</option>
                                        <% 
                                             for(int i=0;i<cat.size();i++){
                                        %>
                                        <option value="<%= cat.get(i)%>"><%= cat.get(i)%></option>
                                        <%
                                            }
                                        %>
                        </select>
                    </div>
                    <div class="clear"></div><br/>
                    
                    
                    <div class="clear"></div><br/>
                    
                    <div class="grid_2">
                        <h3>Select SubCategory</h3>
                    </div>
                    <div class="grid_5">
                        <select id="selectMenuSubCategory" name="subCategory">
                            <option value="" selected="">Select Sub-Category</option>
                                            <%

                                        for(int i=0;i<subcat.size();i++){
                                            %>

                                            <option value="<%= subcat.get(i)%>"><%= subcat.get(i)%></option>

                                            <%
                                                }
                                            %>
                        </select>
                    </div>
                    <div class="clear"></div><br/>
                    
                     <div class="grid_13">
                    <br/><h1>Enter Product Name</h1><hr/>
                </div>
                    
                    <div class="clear"></div>
                
                     <div class="grid_2">
                        <h3>Enter Product Name </h3>
                    </div>
                    <div class="grid_5">
                        <input id="productName" type="text" name= "productName"  placeholder="Product Name" required/><br/>
                        
                    </div>
                    <div class="clear"></div><br/>
                
                    
                    <div class="clear"></div>
                   
                     <div class="grid_13">
                    <br/><h1>Enter Price, Quantity and Summary</h1><hr/>
                </div>
                    <div class="clear"></div>
                    <div class="grid_4">
                        <h3>Product Price :Rs. </h3>
                    </div>
                    <div class="grid_5">
                        <input id="price" type="number" name= "price" min="1" placeholder="" required/><br/>
                       
                    </div>
                    <div class="clear"></div><br/>
                    <div class="grid_4">
                        <h3>Enter Quantity in Units</h3>
                    </div>
                    <div class="grid_5">
                        <input id="productQty" type="number" min="1" name= "productQty"  placeholder="Quantity" required/><br/>
                    </div>
                    <div class="clear"></div><br/>
                    <div class="grid_4">
                        <h3>Enter Summary</h3>
                    </div>
                    <div class="grid_5">
                        <textarea id="summary" cols="40" rows="5" name="summary" class="grid_6" required></textarea>
                    </div>

                    <div class="clear"></div><br/>
                   
                    <div class="grid_7">
                        <input id="buy" class="next" type="submit" value="Next >"/>
                    </div>
                    
                    
                    
                    
                </form>

            </div>

        

    </body>
</html>
