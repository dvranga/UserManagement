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

public class UserListController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println(action+" action");
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
        else if( action.equals("userList")){
            User user = (User) session.getAttribute("user");
            ArrayList<User> listOfUsers = UserListDAO.getUserList();
            session.setAttribute("listOfUsers", listOfUsers);
            request.setAttribute("userRole", user.getRoleId());
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/userlist");
            requestDispatcher.forward(request, response);
        } else if (action.equals("edit")) {
            int userId = Integer.parseInt(request.getParameter("userId"));
            User userDetailsByUserId = LoginDao.getUserDetailsByUserId(userId);
            session.setAttribute("editUser",userDetailsByUserId);
            RequestDispatcher update = request.getRequestDispatcher("/updateUser");
            update.forward(request,response);

        }


    }
}
