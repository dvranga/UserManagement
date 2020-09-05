package com.bridgelabz.usermanagement.dao;

import com.bridgelabz.usermanagement.configurations.DataBaseConfiguration;
import com.bridgelabz.usermanagement.model.User;

import javax.servlet.http.Part;
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
                InputStream binaryStream = image.getBinaryStream();
                ByteArrayOutputStream stream = new ByteArrayOutputStream();
                byte[] bytes = new byte[4096];
                int bytesRead=-1;
                while ((bytesRead = binaryStream.read(bytes)) != -1) {
                    stream.write(bytes,0,bytesRead);
                }
                byte[] toByteArray = stream.toByteArray();
                user.setImage(Base64.getEncoder().encodeToString(toByteArray));
                binaryStream.close();
                stream.close();
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

    public  static ArrayList<User> deleteUserList(int user_id){
        ArrayList<User> userList=new ArrayList<>();
        DataBaseConfiguration connection=new DataBaseConfiguration();
        try {
            PreparedStatement preparedStatement=connection.getConnection().prepareStatement("" +
                    "delete  from user_permissions where `user_id`=?");
            preparedStatement.setInt(1, user_id);
            preparedStatement.executeQuery();
            PreparedStatement preparedStatement1=connection.getConnection().prepareStatement("" +
                    "delete  from user_details where `user_id`=?");
            preparedStatement.setInt(1, user_id);
            ResultSet resultSet1 = preparedStatement1.executeQuery();

            return (ArrayList<User>) resultSet1;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return userList;
    }




}