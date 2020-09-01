package com.bridgelabz.usermanagement.dao;

import com.bridgelabz.usermanagement.configurations.DataBaseConfiguration;
import com.bridgelabz.usermanagement.model.Permissions;
import com.bridgelabz.usermanagement.model.User;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    DataBaseConfiguration connection=new DataBaseConfiguration();


    public boolean addPermissions(int userId, int web_page_id,boolean add,boolean delete,boolean modify, boolean read) throws SQLException {

        try {
            PreparedStatement preparedStatement1 = connection.getConnection().prepareStatement("" +
                    "INSERT INTO `user_management`.`user_permissions` (`user_id`,`web_page_id`,`add`,`delete`,`modify`,`read`) VALUES (?, ?, ?, ?, ?, ?);");
            preparedStatement1.setInt(1,userId);
            preparedStatement1.setInt(2,web_page_id);
            preparedStatement1.setBoolean(3,add);
            preparedStatement1.setBoolean(4,delete);
            preparedStatement1.setBoolean(5,modify);
            preparedStatement1.setBoolean(6,read);
            int result = preparedStatement1.executeUpdate();
            return (result!=0);
        }  catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean addUser(User user) throws SQLException {

        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("" +
                    "INSERT INTO `user_management`.`user_details` (`first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `country`, `phone`, `phone_ext`, `email`, `address`, `user_name`, `password`, `role_id`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
            preparedStatement.setString(1, user.getFirstName());
            preparedStatement.setString(2, user.getMiddleName());
            preparedStatement.setString(3,user.getLastName());
            preparedStatement.setDate(4,user.getDateOfBirth());
            preparedStatement.setString(5,user.getGender());
            preparedStatement.setString(6,user.getCountry());
            preparedStatement.setLong(7,user.getMobileNumber());
            preparedStatement.setLong(8,user.getParentNumber());
            preparedStatement.setString(9,user.getEmail());
            preparedStatement.setString(10,user.getAddress());
            preparedStatement.setString(11,user.getUserName());
            preparedStatement.setString(12,user.getPassword());
            preparedStatement.setInt(13,user.getRoleId());
            int result = preparedStatement.executeUpdate();
            return (result!=0);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
    }
    public int getUserId(String userName) {
        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("" +
                    "select user_id from user_details where user_name=?;");
            preparedStatement.setString(1, userName);
            ResultSet resultSet= preparedStatement.executeQuery();

            if(resultSet.next()) {
               int user_id = resultSet.getInt("user_id");
                return user_id;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return 0;
    }

    public int checkEmail(String email) {
        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("" +
                    "select user_id from user_details where email=?;");
            preparedStatement.setString(1, email);
            ResultSet resultSet= preparedStatement.executeQuery();

            if(resultSet.next()) {
                int user_id = resultSet.getInt("user_id");
                return (user_id);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 0;
    }
    public int checkPhone(long phone) {
        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("" +
                    "select user_id from user_details where phone=?;");
            preparedStatement.setLong(1, phone);
            ResultSet resultSet= preparedStatement.executeQuery();

            if(resultSet.next()) {
                int user_id = resultSet.getInt("user_id");
                return (user_id);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 0;
    }
    public int checkUserName(String userName) {
        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("" +
                    "select user_id from user_details where user_name=?;");
            preparedStatement.setString(1, userName);
            ResultSet resultSet= preparedStatement.executeQuery();

            if(resultSet.next()) {
                int user_id = resultSet.getInt("user_id");
                return (user_id);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return 0;
    }
}