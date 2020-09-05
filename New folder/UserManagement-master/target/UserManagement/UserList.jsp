<%--
  Created by IntelliJ IDEA.
  User: ARUN
  Date: 31-08-2020
  Time: 09:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <style>
        <%@include file="css/usersList.css"%>
    </style>
</head>
<body>
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
                <a href="addUser" class="newUser-button">
                    <i class="ti-user"> </i>&nbsp;New User
                </a>
            </div>
            <div class="row">
                <select class="form-control"><option>10</option><option>20</option><option>50</option><option>100</option>
                </select>
                <input placeholder="Search..." id="myInput" onkeyup="myFunction()" type="text" class="search-box" title="Type in a name">
            </div>
            <br/>
            <div class="userList-table">
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
                    <%ArrayList<User> listOfUsers=(ArrayList<User>)session.getAttribute("listOfUsers"); %>
                    <% for (User usersList: listOfUsers) { %>
                    <tr>
                        <td> <img src="data:image/jpg;base64,<%=usersList.getImage()%>" width="40" height="30" /></td>
                        <% String fullName=usersList.getFirstName();
                            if(usersList.getMiddleName()!=null){
                                fullName+=" "+usersList.getMiddleName();
                            }
                            fullName+=" "+usersList.getLastName();
                        %>

                        <td><%=fullName%></td>
                        <td><%=usersList.getEmail()%></td>
                        <td><%=usersList.getDateOfBirth()%></td>
                        <td><%=usersList.getStatus()%></td>
                        <% int roleId = usersList.getRoleId();
                            String role=(roleId==1)?"Admin":"User";
                        %>
                        <td><%=role%></td>
                        <td ><a class="lock-icon"> <i class="ti-unlock" /></a></td>
                        <td > &nbsp;&nbsp;<i style="color: #00aaff" class="ti-pencil-alt"/>&nbsp;&nbsp;<a  href="userListController?action=delete&userId=<%=usersList.getUser_id()%>" class="trash-icon"><i class="ti-trash"/></a></td>

                    </tr>
                    <%}%>
                </table>
            </div>

        </div>



    </div>
</div>

</div>
<script>
    <%@page import="java.util.ArrayList" %><%@ page import="com.bridgelabz.usermanagement.model.User"%>
    <%@ page import="java.util.*" %>
    function myFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("users");
        tr = table.getElementsByTagName("tr");
        console.log(tr.length,"length")
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
                txtValue = td.textContent || td.innerText || td.innerHTML;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

</script>

</body>
</html>
