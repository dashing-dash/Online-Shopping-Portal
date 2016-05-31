
package loginRegister;

import database.DB_Conn;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import user.user;

@WebServlet(name = "registerServlet", urlPatterns = {"/registerServlet"})
public class registerServlet extends HttpServlet {

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String email, pass, passAgain;
        boolean isRegistered = false;

        email = request.getParameter("emailReg");
        pass = request.getParameter("passReg");
        passAgain = request.getParameter("passAgainReg");
               
        PrintWriter out = response.getWriter();
        HttpSession userSession = request.getSession();

        try{
            DB_Conn con = new DB_Conn();
            Connection c = con.getConnection();
            if (request.getParameter("emailReg") != null){    
                    if (pass.length() > 7) {
                        if (pass.equals(passAgain)) {
                            // then the user is registered and a session is 
                            String sql = "INSERT INTO  `sai`.`user` "
                                    + "(`user_id` ,`email` ,`pass` ,`registeredOn`) "
                                    + "VALUES (NULL ,  ?,  ? , NOW( )); ";

                            PreparedStatement psmt = c.prepareStatement(sql);
                            psmt.setString(1, email);
                            psmt.setString(2, pass);

                            int i = psmt.executeUpdate();

                            if (i == 1) {
                                isRegistered = true;
                                out.println("You are registered ");
                                user User = new user();
                                User.setUserEmail(email);
                                userSession.setAttribute("user", User);
                               response.sendRedirect(request.getContextPath()+"/index.jsp");
                            }
                            else {
                                isRegistered = false;
                                out.println("You are not registered");
                            }

                        } //Else both passwords do not match
                        else {
                            isRegistered = false;
                            out.print(" nOT Success!  both passwords do not match!");

                        }
                    } //or the paasword length is less than 7
                    else {
                        isRegistered = false;
                        out.print(" nOT Success!! the paasword length is less than 7");
                    }
              
            }
            else {
                isRegistered = false;
                response.sendRedirect("_newRegister.jsp");
            }
            
            if (isRegistered == false) {
                out.print(" nOT Registered");        
            }

            //try ends here
        }  catch (Exception ex) {
            out.println("Hello"+ex.getMessage());
        }
    }
}
