package com.bridgelabz.usermanagement.controller;


import com.bridgelabz.usermanagement.dao.*;
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
    int x=0;
    String checkName=null;

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("username");

        String password = request.getParameter("password");

        HttpSession session = request.getSession(true);
        User user=null;
        user = LoginDAO.validate(name, password);
        if (user != null) {
            user.setLoginAttempts(0);
            UpdateUserDAO updateUserDAO=new UpdateUserDAO();
            updateUserDAO.setStatus(name,true);
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
            session.setAttribute("toplocations", DashboardDAO.getTopLocations());
            session.setAttribute("malePercentage", DashboardDAO.getMalePercentage());
            session.setAttribute("femalePercentage", DashboardDAO.getFemalePercentage());
            session.setAttribute("lastLoginDetails",DashboardDAO.getLastLoggedInDetails(user.getUser_id()));
            session.setAttribute("ageGroup", AgeGroupData.getAgedata());
            ArrayList<User> listOfUsers = UserListDAO.getUserList();
            session.setAttribute("listOfUsers", listOfUsers);
            session.setAttribute("registrationDetails",RegistrationGraphDetails.AllTimeRegistration());
            session.setAttribute("registerMonthDetails",RegistrationGraphDetails.getMonthWise());
            session.setAttribute("registerYearDetails",RegistrationGraphDetails.getYearWise());
            System.out.println(RegistrationGraphDetails.AllTimeRegistration()+"  allregisterdetails");
            System.out.println(RegistrationGraphDetails.getMonthWise()+" allmonthdetails");
            System.out.println(RegistrationGraphDetails.getYearWise()+" allyeardetils");

            if(user.getRoleId()==1){
                RequestDispatcher rd=request.getRequestDispatcher("dashboard");
                rd.forward(request,response);
            }
            else if (user.getRoleId()==0){
                RequestDispatcher rd=request.getRequestDispatcher("userProfile");
                rd.forward(request,response);
            }
        }

        else{
            UpdateUserDAO updateUserDAO=new UpdateUserDAO();
            LogoutDAO.updateLoginAttempts(name);
            if (LogoutDAO.getLoginAttempts(name)>=3) {
                updateUserDAO.setStatus(name,false);
            }
            RequestDispatcher rd=request.getRequestDispatcher("login");
            rd.include(request,response);
        }
        out.close();
    }
}
