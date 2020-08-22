package com.usermanagement.controller;

import com.usermanagement.dao.ForgotPasswordDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class ForgotPasswordController extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String username=request.getParameter("username");
        String email=request.getParameter("email");
        String password=ForgotPasswordDao.getPassword(username, email);
        System.out.println(password);
        response.getWriter().print("your password is "+password);
        out.close();
    }

}
