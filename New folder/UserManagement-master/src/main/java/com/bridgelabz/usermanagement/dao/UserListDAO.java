package com.bridgelabz.usermanagement.dao;

import com.bridgelabz.usermanagement.configurations.DataBaseConfiguration;
import com.bridgelabz.usermanagement.model.User;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;

public class UserListDAO {

    public  static ArrayList<User> getUserList(){
        ArrayList<User> userList=new ArrayList<>();
        DataBaseConfiguration connection=new DataBaseConfiguration();
        try {
            PreparedStatement preparedStatement=connection.getConnection().prepareStatement("" +
                    "select * from user_details");
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                User user=new User();
                user.setUser_id(resultSet.getInt("user_id"));
                user.setFirstName(resultSet.getString("first_name"));
                user.setMiddleName(resultSet.getString("middle_name"));
                user.setLastName(resultSet.getString("last_name"));
                user.setDateOfBirth(resultSet.getDate("date_of_birth"));
                user.setGender(resultSet.getString("gender"));
                user.setCountry(resultSet.getString("country"));
                user.setMobileNumber(resultSet.getLong("phone"));
                user.setParentNumber(resultSet.getLong("phone_ext"));
                user.setEmail(resultSet.getString("email"));
                user.setAddress(resultSet.getString("address"));
                user.setUserName(resultSet.getString("user_name"));
                user.setPassword(resultSet.getString("password"));
                user.setRoleId(resultSet.getInt("role_id"));
                Blob image = resultSet.getBlob("image");
                InputStream inputStream=image.getBinaryStream();
                ByteArrayOutputStream outputStream=new ByteArrayOutputStream();
                byte[] buffer=new byte[4096];
                int bytesRead=-1;
                while ((bytesRead=inputStream.read(buffer))!=-1){
                    outputStream.write(buffer,0,bytesRead);
                }
                byte[] imagebytes=outputStream.toByteArray();
                user.setImage(Base64.getEncoder().encodeToString(imagebytes));
                inputStream.close();
                outputStream.close();
                userList.add(user);
            }
            return userList;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return userList;
    }
}
