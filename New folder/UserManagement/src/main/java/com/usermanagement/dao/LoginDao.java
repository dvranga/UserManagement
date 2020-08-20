package com.usermanagement.dao;

import java.sql.*;

public class LoginDao {

    public static boolean validate(String name, String pass) {

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "user_management";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "root";


        try {
            Class.forName(driver).newInstance();
            Connection con = DriverManager.getConnection(url + dbName, userName, password);
            PreparedStatement preparedStatement = con.prepareStatement("select * from user_details where user_name=? and password=?");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, pass);
            ResultSet resultSet= preparedStatement.executeQuery();
            return resultSet.next();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

}
