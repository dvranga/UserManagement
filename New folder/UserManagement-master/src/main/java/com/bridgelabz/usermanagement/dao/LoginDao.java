package com.bridgelabz.usermanagement.dao;

import com.bridgelabz.usermanagement.configurations.DataBaseConfiguration;
import com.bridgelabz.usermanagement.model.User;

import java.io.IOException;
import java.sql.*;

public class LoginDao {

    public static User validate(User user) {

        DataBaseConfiguration connection=new DataBaseConfiguration();

        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("select * from user_details where user_name=? and password=?");
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassword());
            ResultSet resultSet= preparedStatement.executeQuery();
            if(resultSet.next()){
                user.setFirstName(resultSet.getString("first_name"));
                user.setMiddleName(resultSet.getString("middle_name"));
                user.setLastName(resultSet.getString("last_name"));
                user.setRoleId(resultSet.getInt("role_id"));
            }
        } catch (SQLException | IOException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }



}