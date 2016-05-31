<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.DB_Conn"%>
<!DOCTYPE HTML> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DOPPLER SHOP</title>
        <!-- Default Stylesheets -->
        <%@include file="includesPage/_stylesheets.jsp" %>
        <link rel="stylesheet" href="css/slider.css"  />
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/slider.js"></script>




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


    <%@include file="includesPage/_search_navigationbar.jsp" %>

    
  



    <div class="container_16">
        <div id = "contents">
            <!-- LeftSide -->


<%
    try{
    Connection c = new DB_Conn().getConnection();
    Statement st = c.createStatement();
    String getCategory = "SELECT * FROM  `category`";
    
    ResultSet rs = st.executeQuery(getCategory);
  
%>
           


        </div>

        <!-- Middle -->
        <div id="middle" class="grid_13">
            <jsp:include page="includesPage/mainHeaders/topMostViewedProducts_4.jsp"></jsp:include>
        </div>
        <!--The Middle Content Div Closing -->
    </div>
    <!--The Center Content Div Closing -->

    <jsp:include page="includesPage/_footer.jsp"></jsp:include>


                     <%
                      
  }
    catch(SQLException se1){                      //Handle errors for JDBC
	      se1.printStackTrace();
	   }
    catch(Exception e){                            //Handle errors for Class.forName
	      e.printStackTrace();
    }
                        %>


</body>
</html>



