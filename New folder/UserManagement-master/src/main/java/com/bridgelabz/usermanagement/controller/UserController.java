package com.bridgelabz.usermanagement.controller;


import com.bridgelabz.usermanagement.dao.LoginDao;
import com.bridgelabz.usermanagement.dao.UserDAO;
import com.bridgelabz.usermanagement.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;

public class UserController extends HttpServlet {



    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        UserDAO userDAO=new UserDAO();

        User user=new User();
        user.setFirstName(request.getParameter("firstName"));
        user.setMiddleName(request.getParameter("lastName"));
        user.setLastName(request.getParameter("middleName"));
        user.setDateOfBirth(LocalDate.parse(request.getParameter("dateOfBirth")));
        user.setGender(request.getParameter("gender"));
        user.setCountry(request.getParameter("country"));
        user.setMobileNumber(Long.valueOf(request.getParameter("phone")));
        user.setParentNumber(Long.valueOf(request.getParameter("phone_Ext")));
        user.setEmail(request.getParameter("email"));
        user.setAddress(request.getParameter("address"));
        user.setUserName(request.getParameter("userName"));
        user.setPassword(request.getParameter("password"));
        user.setConformPassword(request.getParameter("conformPassword"));
        user.setRoleId(Integer.parseInt(request.getParameter("userRole")));
        boolean addUser = userDAO.addUser(user);
        System.out.println(addUser);

        out.close();
    }


}
