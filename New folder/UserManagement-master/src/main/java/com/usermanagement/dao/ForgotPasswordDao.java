package com.usermanagement.dao;

import com.usermanagement.connections.DataBaseConnection;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ForgotPasswordDao {

    public static String getPassword(String UserName, String email) throws IOException {

        DataBaseConnection connection=new DataBaseConnection();
        String  password=null;
        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("select password from user_details where user_name=? and email=?");
            preparedStatement.setString(1, UserName);
            preparedStatement.setString(2, email);
            ResultSet resultSet= preparedStatement.executeQuery();
            while (resultSet.next()){
                password=resultSet.getString(1);
            }
            return password;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return password;
    }
}
