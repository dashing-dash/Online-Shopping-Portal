
package Admin;

import database.DB_Conn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import user.user;

@WebServlet(name = "adminInsertDetails", urlPatterns = {"/adminInsertDetails"})
public class adminInsertDetails extends HttpServlet{
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        Connection c;
        String company,cat,scat,productName,summary, price, qty;
    
        company= request.getParameter("company");
        cat=  request.getParameter("category");
        scat= request.getParameter("subCategory");
        productName=  request.getParameter("productName");
        price= request.getParameter("price");
        qty=  request.getParameter("productQty");
        summary=  request.getParameter("summary");
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
   out.println("<h1>lokesh</h1>");
   out.println("<h1>COMPANY="+company+" "+cat+" "+scat+" "+productName+" "+summary+" "+ price+" "+qty+"</h1>");
          
        
           try {
               user User=new user();
        HttpSession session = request.getSession();
        User = (user) session.getAttribute("user");
        out.println("<h6>daksjdhaskjdhaksj</h6>");
                String insertQuery = ""
                        + "INSERT INTO  "
                        + "`sai`.`products` "
                        + "(`product_id` ,"
                        + "`product-name` ,"
                        + "`sub-category-name` ,"
                        + "`category-name` ,"
                        + "`company-name` ,"
                        + "`price` ,"
                        + "`summary`, "
                        + "`tags`, "
                        + "`product_qty`, "
                        + "`lastUpdated`, "
                        + "`hits` ) "
                        + "VALUES "
                        + ""
                        + "(NULL ,  "
                        + "'"+productName +"',  "
                        + "'"+scat+"',  "
                        + "'"+cat+"',  "
                        + "'"+company+"',  "
                        + "'"+price+"', "
                        + "'"+summary+"', "
                        + "'"+productName+"', "
                        + ""+qty+","
                        + "NOW( ),"
                        + " 0  );";
                out.print(""+insertQuery);
                
                c = new DB_Conn().getConnection();
            Statement st = c.createStatement();
            st.execute(insertQuery);
                ResultSet executeQuery = st.executeQuery("SELECT  `product_id` "
                                                         + " FROM  `products` "
                                                         + " WHERE  `product-name` =  '"+productName +"'");
                    String ProductId = "";
                    while (executeQuery.next()){
                        ProductId = executeQuery.getString("product_id");
                    }
                    session.setAttribute("productName", productName);
                    session.setAttribute("productId", ProductId);
                    
                    ResultSet executeQueryFetchPid = st.executeQuery("SELECT  `product_id` "
                                                        +" FROM  `products` "
                                                        + " WHERE  `product-name` =  '"+productName +"' ");
                int pid = 0;
                while (executeQueryFetchPid.next()){
                     pid = executeQueryFetchPid.getInt("product_id");
                 }
                int p=Integer.parseInt(price);
                int q=Integer.parseInt(qty);
                st.executeUpdate(" INSERT INTO  `sai`.`expenses` ("
                            +"`expenses_id` ,"
                            +"`product_id` ,"
                            +"`product_name` ,"
                            +"`price` ,"
                            +"`purchase_date`"
                            +")"
                            +"VALUES ("
                            +"NULL ,  '"+pid+"',  '"+productName+"',  '"+(q*p)+"', NOW( )"
                            +" );  ");
                  out.println("<h1>looooo</h1>");  
                response.sendRedirect("productInsertImages.jsp");
                  
                
            }
            catch (NumberFormatException ex){
                out.println(ex.getMessage());
            }
            catch (SQLException ex) {
               out.println(ex.getMessage());                
            } 
            catch (ClassNotFoundException ex) {
               out.println(ex.getMessage()); 
            }
           catch (Exception ex) {
               out.println(ex.getMessage()); 
            }
            finally{
                    
                }
    }
    
    }
    

