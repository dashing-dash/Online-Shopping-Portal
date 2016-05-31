

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>        
        <!-- Default Stylesheets -->
        <link rel="shortcut icon" href="images/logo/ico.png"/>

        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/styles.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <script type="text/javascript" src="js/jquery.js"></script>

    </head>
    <body>
        
     

        <div class="grid_16">
            <div id="logo" class="grid_6"> <a href="index.jsp"><img src="images/logo/dope.png" /></a>
            </div>           
        </div>



        <div id="LoginBox" class="new_grid">
            <div class="new_grid" id = "loginForm">
                <form  method="post" action="loginServlet"  name="login">
                    <table>
                        <tr>
                            <td colspan="2">
                                <strong><h1 style="font-weight:bold; text-align:left; padding:20px 0px; color:#FFF;"> Login...</h1></strong>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Email</label>
                            </td>
                            <td>
                                <label><input type="email" name="email" placeholder="hello@gmail.com" required/><br/></label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Password</label>
                            </td>
                            <td>
                                <input type="password" name="pass" placeholder="Password" required/><br/>
                            </td>
                        </tr><tr>
                            <td>

                            </td>
                            <td>
                                <input type="submit" value="Login!!" id="greenBtn" /><br/>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
                  </div>

    </body>
</html>
