
        <link rel="stylesheet" type="text/css" href="css/reset.css"/>
        <link rel="stylesheet" type="text/css" href="css/text.css"/>
        <link rel="stylesheet" type="text/css" href="css/960_16.css"/>
        <link rel="stylesheet" type="text/css" href="css/product.css"  />

        <link rel="stylesheet" type="text/css" href="css/lightbox.css"  />

        <link rel="stylesheet" type="text/css" href="css/styles.css"/>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.DB_Conn"%>
<%
            String sqlSearch = "";
            if (request.getParameter("searchvar") != null){
                String searchText = request.getParameter("searchvar");
                String searches [] = searchText.split(" ");
                
                if (searchText.length() > 2){
                    
                sqlSearch = "SELECT * FROM  `products` p  WHERE ";
              //  sqlSearch ="SELECT * FROM `products` p"
                //             +"INNER JOIN `images` i ON"
                  //           +"ON `p`.`tags` LIKE '%kaho%'  AND `p`.`product_qty` > 0 GROUP BY `p`.`product-name`;";
                //out.println (""+sqlSearch);
                for (int i=0; i<searches.length; i++){
                    if (searches[i].trim().length() > 1){
                        sqlSearch+=" `p`.`product-name` LIKE '%"+searches[i]+"%' ";
                        //out.println (" `tags` LIKE '%"+searches[i]+"%' ");
                        if (i != searches.length-1){
                            sqlSearch+=" AND ";
                            //out.println (" AND ");
                        }
                    }
                }
                
                sqlSearch+=" AND `p`.`product_qty` > 0 ";
                
                sqlSearch+=" GROUP BY  `p`.`product-name`; ";
                
                //sqlSearch+=" ORDER BY  `hits` DESC ";
               // out.println (sqlSearch);
                %>
               
            <!-- Middle -->
            <div class="container_16">
            <div class="grid_15 push_1">
                <div class="grid_14" id="whiteBox">
                    
                        <%
                        
                                DB_Conn con = new DB_Conn();
                                Connection c = con.getConnection();

                                Statement st = c.createStatement();
                                ResultSet rs = st.executeQuery(sqlSearch.toString());

                                while (rs.next()) {
                                   String product_id = rs.getString("product_id");

                                    String product_name = rs.getString("product-name");

                                    String sub_category_name = rs.getString("sub-category-name");

                                    String category_name = rs.getString("category-name");

                                    String company_name = rs.getString("company-name");

                                    String price = rs.getString("price");

                                    String summary = rs.getString("summary");
                                    
                           
                       %>
                        <div class="clear"></div>
                        <div class="grid_2">
                            
                        </div>
                        <div class="grid_14">
                            <div class="grid_10">
                                <p id="info"><a href="product.jsp?id=<%=product_id%>"><h3><span class="blue"> <%=product_name %></span></h3>By <%= company_name+" "+ category_name %><br/><span class="red">Rs. <%= price %></span></p></a>
                            </div>
                            <div class="grid_3">
                                <p><%=sub_category_name %>  <a href="addToCart.jsp?id=<%= product_id %>" id="greenBtn">Add to cart</a></p>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <%
                                }
                            rs.close();
                            st.close();
                            c.close();
                            
                        %>


                        <div class="clear"></div>
                </div></div>
            </div>
<%
            }
        %><%

        
                }
                %>