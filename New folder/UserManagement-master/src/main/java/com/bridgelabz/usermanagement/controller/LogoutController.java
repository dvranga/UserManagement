package com.bridgelabz.usermanagement.controller;

import com.bridgelabz.usermanagement.dao.LogoutDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogoutController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        int userid = Integer.parseInt(request.getParameter("userid"));
        String username = (String) session.getAttribute("username");
        LogoutDAO logoutDAO=new LogoutDAO();
        logoutDAO.updateLoginDetails(userid,username);
        session.invalidate();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("login");
        requestDispatcher.forward(request,response);
    }
}