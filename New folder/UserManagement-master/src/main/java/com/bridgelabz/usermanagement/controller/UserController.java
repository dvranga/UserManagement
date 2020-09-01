package com.bridgelabz.usermanagement.controller;

import com.bridgelabz.usermanagement.dao.UserDAO;
import com.bridgelabz.usermanagement.model.Permissions;
import com.bridgelabz.usermanagement.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

public class UserController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        String add=request.getParameter("add");
        System.out.println(add);
        String firstName=request.getParameter("firstName");
        String middleName=request.getParameter("middleName");
        String lastName=request.getParameter("lastName");
        String date=request.getParameter("dateOfBirth");
        Date dateOfBirth=Date.valueOf(date);
        String gender=request.getParameter("gender");
        String country=request.getParameter("country");
        Long mobileNumber=Long.parseLong(request.getParameter("phone"));
        Long parentsNumber=Long.parseLong(request.getParameter("phone_Ext"));
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        String role=request.getParameter("userRole");
        int roleId=(role == "Admin")?1:0;
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");
        User user=new User(firstName, middleName, lastName, dateOfBirth, gender, country, mobileNumber, parentsNumber,
                email, address, roleId, userName, password);

        boolean dashboardAdd= Boolean.parseBoolean(request.getParameter("dashboard_add"));
        boolean dashboardDelete= Boolean.parseBoolean((request.getParameter("dashboard_delete")));
        boolean dashboardModify= Boolean.parseBoolean((request.getParameter("dashboard_modify")));
        boolean dashboardRead= Boolean.parseBoolean((request.getParameter("dashboard_read")));
        boolean settingsAdd= Boolean.parseBoolean((request.getParameter("settings_add")));
        boolean settingsDelete = Boolean.parseBoolean((request.getParameter("settings_delete")));
        boolean settingsModify= Boolean.parseBoolean((request.getParameter("settings_modify")));
        boolean settingsRead=Boolean.parseBoolean((request.getParameter("settings_read")));
        boolean userInfoAdd= Boolean.parseBoolean((request.getParameter("user_info_add")));
        boolean userInfoDelete = Boolean.parseBoolean((request.getParameter("user_info_delete")));
        boolean userInfoModify= Boolean.parseBoolean((request.getParameter("user_info_modify")));
        boolean userInfoRead= Boolean.parseBoolean((request.getParameter("user_info_read")));
        boolean w1Add= Boolean.parseBoolean((request.getParameter("w1_add")));
        boolean w1Delete= Boolean.parseBoolean((request.getParameter("w1_delete")));
        boolean w1Modify= Boolean.parseBoolean((request.getParameter("w1_modify")));
        boolean w1Read = Boolean.parseBoolean((request.getParameter("w1_read")));
        boolean w2Add = Boolean.parseBoolean((request.getParameter("w2_add")));
        boolean w2Delete= Boolean.parseBoolean((request.getParameter("w2_delete")));
        boolean w2Modify= Boolean.parseBoolean((request.getParameter("w2_modify")));
        boolean w2Read= Boolean.parseBoolean((request.getParameter("w2_read")));
        boolean w3Add =Boolean.parseBoolean((request.getParameter("w3_add")));
        boolean w3Delete=Boolean.parseBoolean((request.getParameter("w3_delete")));
        boolean w3Modify=Boolean.parseBoolean((request.getParameter("w3_modify")));
        boolean w3Read= Boolean.parseBoolean((request.getParameter("w3_read")));

        Permissions permissions=new Permissions(dashboardAdd, dashboardDelete, dashboardModify, dashboardRead, settingsAdd, settingsDelete, settingsModify, settingsRead,
                userInfoAdd, userInfoDelete, userInfoModify, userInfoRead, w1Add, w1Delete, w1Modify, w1Read, w2Add, w2Delete, w2Modify, w2Read, w3Add, w3Delete, w3Modify, w3Read);

        UserDAO userDAO =new UserDAO();
        int checkEmail = userDAO.checkEmail(user.getEmail());
        if (checkEmail>0) {
            request.setAttribute("helperText", "Email Already Present");
        }
        int checkMobileNumber = userDAO.checkPhone(user.getMobileNumber());
        if (checkMobileNumber>0) {
            request.setAttribute("helperText", "Mobile Number Already Present");
        }
        int checkUserName = userDAO.checkUserName(user.getUserName());
        if (checkUserName>0) {
            request.setAttribute("helperText", "User Name Already Present");
        }
        boolean  addUser = false;
        try {
            addUser = userDAO.addUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
            if(checkEmail<1&&checkMobileNumber<0&&checkUserName<0) {
                request.setAttribute("helperText", "Registration Failed");
            }
        }

        int userId = 0;
        if (addUser) {
             userId = userDAO.getUserId(user.getUserName());

        }

        boolean addPermissions=false;
        try {
            userDAO.addPermissions(userId,1,dashboardAdd,dashboardDelete,dashboardModify,dashboardRead);
            userDAO.addPermissions(userId,2,settingsAdd,settingsDelete,settingsModify,settingsRead);
            userDAO.addPermissions(userId,3,userInfoAdd,userInfoDelete,userInfoModify,userInfoRead);
            userDAO.addPermissions(userId,4,w1Add,w1Delete,w1Modify,w1Read);
            userDAO.addPermissions(userId,5,w2Add,w2Delete,w2Modify,w2Read);
             addPermissions = userDAO.addPermissions(userId, 6, w3Add, w3Delete, w3Modify, w3Read);
        } catch (SQLException e) {
            e.printStackTrace();
        }


        if (addUser&&addPermissions==true) {
            request.setAttribute("helperText", "User successfully registered.");
        }
        RequestDispatcher rd=request.getRequestDispatcher("newUser");
        rd.include(request,response);
    }
}