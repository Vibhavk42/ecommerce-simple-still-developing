/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.cart.servlet;

import com.mycompany.cart.entities.User;
import com.mycompany.cart.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Authenticator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transaction;
import org.hibernate.Session;

/**
 *
 * @author HP
 */
public class RegisterServlet extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            
             try{
                
              String userName=request.getParameter("user_name");
                
               String userEmail=request.getParameter("user_email");
               String userPassword=request.getParameter("user_password");
               String userPhone=request.getParameter("user_Phone");
               String userAddress=request.getParameter("user_address"); 
               
               
               //validation on server side
               if(userName.isEmpty())
               {
                   out.println("user name field is blank");
                   return;
               }
                
             //creating user object to store in database using hybernate not jdbc
            User user =new User(userName, userEmail, userPassword, userPhone, "default.jpg", userAddress,"normal");
              Session hibernatesession=FactoryProvider.getFactory().openSession();  
                 org.hibernate.Transaction tx= hibernatesession.beginTransaction();
                      int userId =(int) hibernatesession.save(user);
                
                tx.commit();
                hibernatesession.close();
                
                //creating session to send message to user
                 HttpSession httpsession = request.getSession();
                   httpsession.setAttribute("message", "Registration successfull"+""+"userid is"+userId);
                   response.sendRedirect("register.jsp");
                   return;
                
             
            }catch(Exception e)
            {
                e.printStackTrace();
            }   
        }
    }

}
