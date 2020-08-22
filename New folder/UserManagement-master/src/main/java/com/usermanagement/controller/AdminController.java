package com.usermanagement.controller;


import com.usermanagement.dao.LoginDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class AdminController extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username=request.getParameter("username");
        String password=request.getParameter("password");

        HttpSession session = request.getSession(true);
        if(session!=null)
            session.setAttribute("username",username);

        if(LoginDao.validate(username, password)){
            RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
            rd.forward(request,response);
        }
        else{
           out.print("<p style=\"color:white;background-color:dodgerblue;width:225px;margin-left:580px;height:30px\">Sorry username or password error</p>");
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.include(request,response);
        }
        out.close();
    }
}
