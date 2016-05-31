<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DOPPLER SHOP</title>
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

            #targetPrev {
                padding:5px;
                border:1px solid #CCC;
                background:#EEE;
            }
        </style>
        <script type = "text/javascript">
            
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    $('#targetPrev').hide();
                    reader.onload = function (e) {
                        $('#targetPrev')
                        .attr('src', e.target.result)
                        .width(200);
                        $('#targetPrev').fadeIn(300);
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
    </head>
    <body>

        <%@ page language="java" import="javazoom.upload.*,java.util.*" %>

        <%
            String path = application.getRealPath("uploads");
        %>

        

         <%
        if (session.getAttribute("user") == null ){// THen new user, show join now
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
        %>



    <div class="container_16">
     <div id="leftside" class="grid_3">
    <ul id="leftsideNav">
        
        <li><a href="admin_addProduct.jsp">Add Product</a></li>

    </ul>
</div> 
          
            <div id="whiteBox" class="grid_13">
                <div style="padding: 10px;" class="grid_13">
                    <h3  align="center">
                        <%
                            if ((session.getAttribute("productName") == null)) {
                              out.println("There is no product detected to insert an image for it...");
                            }else {
                        %>
                    </h3>        
                    <h1><% out.print("Start adding Images right now!!<br/>" + session.getAttribute("productName"));%></h1>
                  

                    <form method="post" action="uploadImage.jsp" name="upform" enctype="multipart/form-data">

                        <img class="push_1" id="targetPrev" alt="your image" />
                        <table width="60%" border="0" cellspacing="1" cellpadding="1" align="center" class="style1">
                            <tr>
                                <td align="left"><b>Select a file to upload :</b></td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <input type="file" onchange="readURL(this);"  name="uploadfile" size="50">
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                   
                                    <input id="greenBtn" type="submit" name="Submit" value="Upload">
                                    <br/>
                                </td>
                            </tr>
                        </table>
                        <br>
                          
                        <br>
                        <%
                            if (request.getAttribute("fileName") != null) {
                        %>
                        <div class="clear"></div><br/>
                        <h1>Result : <%= request.getAttribute("result")%><br/></h1>
                      
                        
                        <%
                            String result = (String) request.getAttribute("result");
                            if (result.equals("File Uploaded with no errors...")) {
                        %>

                        File <%= request.getAttribute("fileName")%> was uploaded to <%= path%>

                        <%
                                }
                            }
                          }
                        %>
                    </form>
                   
                </div>
            </div>
        </div>
    </body>
</html>
