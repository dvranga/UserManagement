package com.bridgelabz.usermanagement.controller;


import com.bridgelabz.usermanagement.dao.LoginDao;
import com.bridgelabz.usermanagement.dao.UserListDAO;
import com.bridgelabz.usermanagement.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

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
        ArrayList dashboardpermission = LoginDao.getPermissions(user.getUser_id(), 1);
        System.out.println(dashboardpermission+" dshboard permission");
        ArrayList settingpermission = LoginDao.getPermissions(user.getUser_id(), 2);
        System.out.println(settingpermission+" settingpermission");
        ArrayList userpermission = LoginDao.getPermissions(user.getUser_id(), 3);
        System.out.println(userpermission+" userpermission");
        ArrayList webpage1 =LoginDao.getPermissions(user.getUser_id(), 4);
        System.out.println(webpage1+" webpage1");
        ArrayList webpage2 =LoginDao.getPermissions(user.getUser_id(), 5);
        System.out.println(webpage2+" webpage2");

        ArrayList webpage3 =LoginDao.getPermissions(user.getUser_id(), 6);
        System.out.println(webpage3+" webpage3");

        session.setAttribute("user",user);
        request.setAttribute("userRole", user.getRoleId());
        session.setAttribute("username",user.getUserName());
        session.setAttribute("webpage1", webpage1);
        session.setAttribute("webpage2", webpage2);
        session.setAttribute("webpage3", webpage3);

        System.out.println(user.getRoleId()+" roleId");
        if(user.getRoleId()==1){
            RequestDispatcher rd=request.getRequestDispatcher("dashboard");
            rd.forward(request,response);
        }
        else if (user.getRoleId()==0){
            RequestDispatcher rd=request.getRequestDispatcher("dashboard");
            rd.forward(request,response);
        }
        else{
            RequestDispatcher rd=request.getRequestDispatcher("login");
            rd.include(request,response);
        }
        out.close();
    }
}
