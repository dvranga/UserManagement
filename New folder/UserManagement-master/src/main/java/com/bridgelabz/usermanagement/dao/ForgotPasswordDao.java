package com.bridgelabz.usermanagement.dao;

import com.bridgelabz.usermanagement.configurations.DataBaseConfiguration;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ForgotPasswordDao {

    public static String getPassword(String yourEmail) throws IOException {

        DataBaseConfiguration connection=new DataBaseConfiguration();
        String  password=null;
        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("select password from user_details where  email=?");
            preparedStatement.setString(1, yourEmail);
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