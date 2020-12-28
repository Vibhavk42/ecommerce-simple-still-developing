
package com.mycompany.cart.servlet;

import com.mycompany.cart.dao.UserDao;
import com.mycompany.cart.entities.User;
import com.mycompany.cart.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import static java.util.concurrent.ThreadLocalRandom.current;
import static javax.enterprise.inject.spi.CDI.current;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

  
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            //validations
            //Autenticating user in database by checking it
           
            UserDao userDao = new UserDao(FactoryProvider.getFactory());
            User user = userDao.getUserByEmailAndPassword(email, password);
            
         
                  //session creation 
                HttpSession httpSession=request.getSession(); 
           if(user==null)
            {
                httpSession.setAttribute("message","Invalid Details");
                response.sendRedirect("login.jsp");
                return;
            }
            else   
            {
                out.println("<h4>welcome" +user.getUserName()+"</h4>");
                
                //login
                 httpSession.setAttribute("current-user",user);
                 //admin user
                 if(user.getUserTpye().equals("admin"))
                         {
                             response.sendRedirect("admin.jsp");
                             
                             //for normal user
                         }else if(user.getUserTpye().equals("normal"))
                         {
                             response.sendRedirect("normal.jsp");
                         }
                         else{
                            out.println("user not identified");
                         }
         
            }    
           
            
            
            
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    
  
   
}
}