package com.bridgelabz.usermanagement.controller;


import com.bridgelabz.usermanagement.dao.LoginDao;
import com.bridgelabz.usermanagement.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
        User user =new User();

        user.setUserName(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));

        HttpSession session = request.getSession(true);

        user= LoginDao.validate(user);
        if(user!=null){
            request.setAttribute("user",user);
            user.setUserName(request.getParameter("username"));
            session.setAttribute("username",user.getUserName());
            RequestDispatcher rd=request.getRequestDispatcher("dashboard");
            rd.forward(request,response);
        }
        else{
            RequestDispatcher rd=request.getRequestDispatcher("welcome");
            rd.include(request,response);
        }
        out.close();
    }
}