package com.bridgelabz.usermanagement.controller;


import com.bridgelabz.usermanagement.dao.DashboardDAO;
import com.bridgelabz.usermanagement.dao.LoginDAO;
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

public class AdminController extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        User user =new User();
        user.setUserName(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));

        HttpSession session = request.getSession(true);

        user= LoginDAO.validate(user);
        ArrayList dashboardpermission = LoginDAO.getPermissions(user.getUser_id(), 1);
        ArrayList settingpermission = LoginDAO.getPermissions(user.getUser_id(), 2);
        ArrayList userpermission = LoginDAO.getPermissions(user.getUser_id(), 3);
        ArrayList webpage1 = LoginDAO.getPermissions(user.getUser_id(), 4);
        ArrayList webpage2 = LoginDAO.getPermissions(user.getUser_id(), 5);
        ArrayList webpage3 = LoginDAO.getPermissions(user.getUser_id(), 6);

        session.setAttribute("user",user);
        request.setAttribute("userRole", user.getRoleId());
        session.setAttribute("username",user.getUserName());
        session.setAttribute("webpage1", webpage1);
        session.setAttribute("webpage2", webpage2);
        session.setAttribute("webpage3", webpage3);
        session.setAttribute("dashboardpermission",dashboardpermission);
        session.setAttribute("settingpermission",settingpermission);
        session.setAttribute("userpermission",userpermission);
        session.setAttribute("totalUsers", DashboardDAO.getNoRecords());
        session.setAttribute("activeusers", DashboardDAO.getActiveRecords());
        session.setAttribute("inactiveUsers", DashboardDAO.getInActiveRecords());
        session.setAttribute("toplocatons", DashboardDAO.getTopLocations());
        System.out.println(DashboardDAO.getTopLocations()+" top locations Admin");
        session.setAttribute("malePercentage", DashboardDAO.getMalePercentage());
        session.setAttribute("femalePercentage", DashboardDAO.getFemalePercentage());
        session.setAttribute("lastLoginDetails",DashboardDAO.getLastLoggedInDetails(user.getUser_id()));
        System.out.println(DashboardDAO.getLastLoggedInDetails(user.getUser_id())+"      last login////////////");
        ArrayList<User> listOfUsers = UserListDAO.getUserList();
        session.setAttribute("listOfUsers", listOfUsers);
        System.out.println(user.getRoleId()+" roleId");
        if(user.getRoleId()==1){
            RequestDispatcher rd=request.getRequestDispatcher("dashboard");
            rd.forward(request,response);
        }
        else if (user.getRoleId()==0){
            RequestDispatcher rd=request.getRequestDispatcher("userProfile");
            rd.forward(request,response);
        }
        else{
            RequestDispatcher rd=request.getRequestDispatcher("login");
            rd.include(request,response);
        }
        out.close();
    }
}
