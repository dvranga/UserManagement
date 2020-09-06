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
            ArrayList<User> listOfUsers1 = UserListDAO.getUserList();
            List<User> listOfUsers = listOfUsers1.subList(0,9 );
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
        } else if (action.equals("pagination")) {
            System.out.println("this is pagination");
            User user = (User) session.getAttribute("user");
            ArrayList<User> listOfUsers1 = UserListDAO.getUserList();
            int pageId = Integer.parseInt(request.getParameter("pageId"));
            int i=0;
            if (10 + pageId < listOfUsers1.size()) {
                i=10+pageId;
            }
            int j=0;
            if (i + 9 < listOfUsers1.size()) {
                 j=i+9;
            }else{
                j=listOfUsers1.size();
            }
            System.out.println(i+" "+j+" paginationa");
            List<User> listOfUsers = listOfUsers1.subList(i,j );
            session.setAttribute("listOfUsers", listOfUsers);
            request.setAttribute("userRole", user.getRoleId());
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/userlist");
            requestDispatcher.forward(request, response);
        }


    }
}
