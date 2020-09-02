<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>User List</title>
    <style>
        <%@include file="css/usersList.css"%>
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
</head>
<body>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/user_management"
        user="root" password="root"
/>
<sql:query var="listUsers"   dataSource="${myDS}">
    SELECT * FROM user_details;
</sql:query>
<div class="header-panel">
    <%@include file="toolBar.jsp" %>
</div>
<div class="body-panel">
    <div class="sidenav-pannel">
        <%@include file="sideNavBar.jsp"%>
    </div>
    <div class="main-content">

        <div class="title">
            <div class="title-name">Users</div>
            <div class="title-link">
                <i style="margin-left: 50%" class="fa fa-home"></i>
                <a class="home-icon" href="dashboard.jsp">Home</a>
                <a> / Users</a>
            </div>
        </div>
        <div class="userList-panel">
            
            <div class="userList-heading">
                <button class="newUser-button">
                    <i class="ti-user"> </i> New User
                </button>
            </div>
            <div class="row">
                <select class="form-control"><option>10</option><option>20</option><option>50</option><option>100</option>
                </select>
                <input placeholder="Search..." type="text" class="search-box">
            </div>
            <br/>
            <div class="userList-table" >
                <table id="users" class="users-table">
                    <tr>
                        <th class="slno"></th>
                        <th class="name">Name</th>
                        <th class="email">Email</th>
                        <th class="Dob">Dob</th>
                        <th class="status"> Status</th>
                        <th class="role">Role</th>
                        <th class="account">Account</th>
                        <th class="action">Action</th>
                    </tr>
                    <c:forEach var="user" items="${listUsers.rows}">
                    <tr>
                        <td>Profile</td>
                        <td><c:out value="${user.user_name}" /></td>
                        <td><c:out value="${user.email}" /></td>
                        <td><c:out value="${user.date_of_birth}" /></td>
                        <td>Active</td>
                        <td>Admin</td>
                        <td ><a class="lock-icon"> <i class="ti-unlock" /></a></td>
                        <td > &nbsp;&nbsp;<i style="color: #00aaff" class="ti-pencil-alt"/>&nbsp;&nbsp;<a class="trash-icon"><i class="ti-trash"/></a></td>
                    </tr>
                    </c:forEach>
                </table>
            </div>

        </div>



    </div>
</div>

</div>

</body>
</html>