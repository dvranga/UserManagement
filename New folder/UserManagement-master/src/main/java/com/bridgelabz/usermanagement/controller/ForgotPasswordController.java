package com.bridgelabz.usermanagement.controller;

import com.bridgelabz.usermanagement.dao.ForgotPasswordDAO;
import com.bridgelabz.usermanagement.utility.EmailUtility;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class ForgotPasswordController extends HttpServlet {
    private String host;
    private String port;
    private String email;
    private String name;
    private String pass;

    public void init() {
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        email = context.getInitParameter("email");
        name = context.getInitParameter("name");
        pass = context.getInitParameter("pass");
    }
    public ForgotPasswordController() {
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String userMail=request.getParameter("email");
        String subject = "Your Password has been sent";
        String password= ForgotPasswordDAO.getPassword(userMail);
        String content = " this is your  password: " + password;
        content += "\nNote: for security reason, "+ "you must change your password after logging in.";
        String message = "";
        try {
            EmailUtility.sendEmail(host, port, email, name, pass, userMail, subject, content);
            message = "Your password has been sent. Please check your e-mail.";
        } catch (Exception ex) {
            ex.printStackTrace();
            message = "There were an error: " + ex.getMessage();
        } finally {
            out.print("<p style=\"colour:white;background-color:green;margin-left:500px;height:30px\">The password has been sent to your email address.</p");
            request.getRequestDispatcher("forgotPassword").forward(request, response);
        }
    }

}