package com.bridgelabz.usermanagement.dao;

import com.bridgelabz.usermanagement.configurations.DataBaseConfiguration;
import com.bridgelabz.usermanagement.model.User;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class LoginDao {

    public static ArrayList  getPermissions(int userId, int menuId){
        DataBaseConfiguration connection= new DataBaseConfiguration();
        ArrayList permissionList=new ArrayList(4);
        try {
            PreparedStatement preparedStatement=connection.getConnection().prepareStatement("select  * from user_permissions where user_id=? and menu_id=?");
            preparedStatement.setInt(1, userId);
            preparedStatement.setInt(2,menuId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                permissionList.add(resultSet.getInt("add")==1?true:false);
                permissionList.add(resultSet.getInt("delete")==1?true:false);
                permissionList.add(resultSet.getInt("modify")==1?true:false);
                permissionList.add(resultSet.getInt("read")==1?true:false);
            }
            return permissionList;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }


    public static User validate(User user) {
        DataBaseConfiguration connection=new DataBaseConfiguration();
        int id=0;

        try {
            PreparedStatement preparedStatement = connection.getConnection().prepareStatement("select * from user_details where user_name=? and password=?");
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassword());
            ResultSet resultSet= preparedStatement.executeQuery();
            if(resultSet.next()){
                user.setUser_id(resultSet.getInt("user_id"));
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