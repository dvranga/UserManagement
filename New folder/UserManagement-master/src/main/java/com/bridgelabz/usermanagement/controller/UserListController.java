package com.bridgelabz.usermanagement.controller;

import com.bridgelabz.usermanagement.dao.DeleteUserDAO;
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
import java.util.ArrayList;
import java.util.List;

public class UserListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);

        if(action.equals("delete")){

            int userId = Integer.parseInt(request.getParameter("userId"));
            User user = (User) session.getAttribute("user");
            if(DeleteUserDAO.deleteUserPermissions(userId) && DeleteUserDAO.deleteUserDetails(userId)) {
                ArrayList<User> listOfUsers = UserListDAO.getUserList();

                session.setAttribute("listOfUsers", listOfUsers);
            }
            request.setAttribute("userRole", user.getRoleId());
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/userlist");
            requestDispatcher.forward(request, response);
        }
         else if (action.equals("edit")) {
            int userId = Integer.parseInt(request.getParameter("userId"));
            User userDetailsByUserId = LoginDao.getUserDetailsByUserId(userId);
            ArrayList dashboardpermission = LoginDao.getPermissions(userId, 1);
            ArrayList settingpermission = LoginDao.getPermissions(userId, 2);
            ArrayList userpermission = LoginDao.getPermissions(userId, 3);
            ArrayList webpage1 =LoginDao.getPermissions(userId, 4);
            ArrayList webpage2 =LoginDao.getPermissions(userId, 5);
            ArrayList webpage3 =LoginDao.getPermissions(userId, 6);
            session.setAttribute("dashboardpermission",dashboardpermission);
            session.setAttribute("settingpermission",settingpermission);
            session.setAttribute("userpermission",userpermission);
            session.setAttribute("webpage1", webpage1);
            session.setAttribute("webpage2", webpage2);
            session.setAttribute("webpage3", webpage3);
            session.setAttribute("editUser",userDetailsByUserId);
            RequestDispatcher update = request.getRequestDispatcher("/updateUser");
            update.forward(request,response);
        } else if (action.equals("pagination")) {
            System.out.println("this is pagination");
            User user = (User) session.getAttribute("user");
            ArrayList<User> listOfUsers1 = UserListDAO.getUserList();
            int pageId = Integer.parseInt(request.getParameter("pageId"));
            int pageId2 = Integer.parseInt(request.getParameter("pageId2"));
            if (pageId2 >= listOfUsers1.size()) {
                pageId2=listOfUsers1.size();
            }
            System.out.println(pageId+"  pagination "+pageId2);
            List<User> listOfUsers = listOfUsers1.subList(pageId,pageId2 );
            session.setAttribute("listOfUsers", listOfUsers);
            request.setAttribute("userRole", user.getRoleId());
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/userlist");
            requestDispatcher.forward(request, response);
        }else if( action.equals("showUsers")){
            User user = (User) session.getAttribute("user");
            ArrayList<User> listOfUsers1 = UserListDAO.getUserList();
            int pageId = Integer.parseInt(request.getParameter("pageId"));
            if (pageId >= listOfUsers1.size()) {
                pageId=listOfUsers1.size();
            }
            List<User> listOfUsers = listOfUsers1.subList(0,pageId );
            session.setAttribute("listOfUsers", listOfUsers);
            request.setAttribute("userRole", user.getRoleId());
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/userlist");
            requestDispatcher.forward(request, response);
        }


    }
}
