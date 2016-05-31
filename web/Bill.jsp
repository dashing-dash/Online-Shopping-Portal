
<%@page import="java.util.ArrayList"%>
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
            
        #whiteBox input , textarea{
                width:90px;
                position: relative;
                color:#000;
                border-color:#696969;
                outline: none;
                border-radius:7px 0px 7px 0px;
                padding:5px;
                background: -webkit-linear-gradient(top, #EEE,#FFF);
                background: -moz-linear-gradient(top, #EEE,#FFF);
                box-shadow:0px 0px 3px  #000;
                -webkit-transition: .7s all ease-in-out;
        }

       #whiteBox input :focus{
                color:#000;
                border-color:#696969;
                outline: none;
                background: -webkit-linear-gradient(top, #FFF,#EEE);
                background: -moz-linear-gradient(top, #FFF,#EEE);
                font-family:'Droid';
                box-shadow:0px 0px 7px  #000;
                -webkit-transition: .7s all ease-in-out;
        }

        #whiteBox  textarea:focus{
                color:#000;
                border-color:#696969;
                outline: none;
                background: -webkit-linear-gradient(top, #FFF,#EEE);
                background: -moz-linear-gradient(top, #FFF,#EEE);
                font-family:'Droid';
                box-shadow:0px 0px 7px  #000;
                -webkit-transition: .7s all ease-in-out;

        }
        #whiteBox textarea{
                font-family:'Droid';
        }
        #whiteBox {
            padding-top: 10px;
            padding-bottom: 10px;
            padding: 10px;
        }
        #status {
            margin: 17px;
            padding: 7px;
            font-size: 17px;
            text-align: center;
            box-shadow: 0px 0px 10px #999;
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
        %>

        <jsp:include page="includesPage/_search_navigationbar.jsp"></jsp:include>


        <div class="container_16">

                      <div class="container_16">
                          <div class="grid_12 push_2" id="whiteBox">
                              <br/><h1>No Bill</h1><hr/><br/>
                          </div>
                      </div>
        </div>
        
    </body>
</html>
