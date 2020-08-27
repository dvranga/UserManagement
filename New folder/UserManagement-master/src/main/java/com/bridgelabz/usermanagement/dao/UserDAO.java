package com.bridgelabz.usermanagement.dao;

import com.bridgelabz.usermanagement.configurations.DataBaseConfiguration;
import com.bridgelabz.usermanagement.model.User;

import java.io.IOException;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {

    DataBaseConfiguration connection=new DataBaseConfiguration();

    public boolean addUser(User user){

        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("" +
                    "INSERT INTO `user_management`.`user_details` (`first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `country`, `phone`, `phone_ext`, `email`, `address`,`user_Name`,`password`,`conform_password`, `role_id`)" +
                    " VALUES (?, ?, ?,?,?,?,?,?,?,?,?,?,?,?)");
            System.out.println(user.getFirstName());
            System.out.println(user.getRoleId());

            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getMiddleName());
            preparedStatement.setString(3,user.getLastName());
            preparedStatement.setDate(4, Date.valueOf(user.getDateOfBirth()));
            preparedStatement.setString(5,user.getGender());
            preparedStatement.setString(6,user.getCountry());
            preparedStatement.setLong(7,user.getMobileNumber());
            preparedStatement.setLong(8,user.getParentNumber());
            preparedStatement.setString(9,user.getEmail());
            preparedStatement.setString(10,user.getConformPassword());
            preparedStatement.setString(11,user.getAddress());
            preparedStatement.setString(12,user.getPassword());
            preparedStatement.setString(13,user.getConformPassword());
            preparedStatement.setInt(14,user.getRoleId());
            int result = preparedStatement.executeUpdate();
            return (result!=0);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return false;
    }
}