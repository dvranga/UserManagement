package com.bridgelabz.usermanagement.model;

import java.sql.Date;
import java.time.LocalDate;

public class User {
    private int user_id;
    private String firstName;
    private String middleName;
    private String lastName;
    private Date dateOfBirth;
    private String gender;
    private String country;
    private long mobileNumber;
    private long parentNumber;
    private String email;
    private  String address;
    private String userName;
    private String password;
    private String status;
    private int roleId;

    public User(String firstName, String middleName, String lastName, Date dateOfBirth, String gender, String country, Long mobileNumber, Long parentsNumber, String email, String address, int roleId, String userName, String password) {
        this.firstName=firstName;
        this.middleName=middleName;
        this.lastName=lastName;
        this.dateOfBirth=dateOfBirth;
        this.gender=gender;
        this.country=country;
        this.mobileNumber=mobileNumber;
        this.parentNumber=parentsNumber;
        this.email=email;
        this.address=address;
        this.roleId=roleId;
        this.userName=userName;
        this.password=password;
    }

    public User() {

    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public String getGender() {
        return gender;
    }

    public String getCountry() {
        return country;
    }

    public long getMobileNumber() {
        return mobileNumber;
    }

    public long getParentNumber() {
        return parentNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public int getRoleId() {
        return roleId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
}