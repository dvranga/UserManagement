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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserListController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/delete":
                    deleteBook(request, response);
                    break;

            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }



    private void deleteBook(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String id = request.getParameter("userid");
        HttpSession session = request.getSession(true);
        Object userid = session.getAttribute("userid");
        System.out.println(id+" ********"+userid);

//        ArrayList<User> users = UserListDAO.deleteUserList((Integer) userid);
        RequestDispatcher rd=request.getRequestDispatcher("UsersList.jsp");
        rd.include(request,response);


    }
}
