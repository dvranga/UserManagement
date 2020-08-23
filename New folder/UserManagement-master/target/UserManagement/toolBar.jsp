<%--
  Created by IntelliJ IDEA.
  User: Heros
  Date: 8/22/2020
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tool Bar</title>
</head>
<body>
<div class="container">
    <div class="column-header">User Management</div>
    <button class="open-button" onclick="toggleNav()"><i class="ti-arrow-circle-left"></i></button>
    <div class="dropdown">
        <h4 class="dropbtn"><%=session.getAttribute("username")%></h4>
        <div class="dropdown-content">
            <a href="#">Profile</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
</div>
</body>
</html>
