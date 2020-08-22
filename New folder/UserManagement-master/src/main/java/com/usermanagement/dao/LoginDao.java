package com.usermanagement.dao;

import com.usermanagement.configurations.DataBaseConfiguration;

import java.io.IOException;
import java.sql.*;

public class LoginDao {

    public static boolean validate(String name, String pass) {

       DataBaseConfiguration connection=new DataBaseConfiguration();

        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("select * from user_details where user_name=? and password=?");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, pass);
            ResultSet resultSet= preparedStatement.executeQuery();
            return resultSet.next();
        } catch (SQLException | IOException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

}
