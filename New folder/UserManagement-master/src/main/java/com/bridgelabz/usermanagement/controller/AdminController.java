package com.bridgelabz.usermanagement.controller;


import com.bridgelabz.usermanagement.dao.LoginDao;
import com.bridgelabz.usermanagement.dao.UserListDAO;
import com.bridgelabz.usermanagement.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class AdminController extends HttpServlet {

//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ServletContext servletContext = request.getServletContext();
//        ArrayList<User> listOfUsers = UserListDAO.getUserList();
//        request.setAttribute("listOfUsers", listOfUsers);
//        RequestDispatcher dispatcher = servletContext.getRequestDispatcher("/UsersList.jsp");
//        dispatcher.forward(request,response);
//    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");


        PrintWriter out = response.getWriter();
        User user =new User();
        System.out.println(request.getParameter("username")+" from login page");
        user.setUserName(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));

        HttpSession session = request.getSession(true);
        user= LoginDao.validate(user);

        ArrayList<User> listOfUsers = UserListDAO.getUserList();
        session.setAttribute("listOfUsers", listOfUsers);
        request.setAttribute("user",user);
        request.setAttribute("userRole", user.getRoleId());
        session.setAttribute("username",user.getUserName());

        if(user.getRoleId()==1){
            RequestDispatcher rd=request.getRequestDispatcher("dashboard");
            rd.forward(request,response);
        }
        else if (user.getRoleId()==0){
            RequestDispatcher rd=request.getRequestDispatcher("profile");
            rd.forward(request,response);
        }
        else{
            RequestDispatcher rd=request.getRequestDispatcher("login");
            rd.include(request,response);
        }

        out.close();
    }

}