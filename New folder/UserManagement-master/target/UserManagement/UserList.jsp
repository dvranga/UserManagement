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
                    <%List<User> listOfUsers= (List<User>) session.getAttribute("listOfUsers"); %>
                    <%
                        for (User user:listOfUsers) { %>
                    <tr>
                        <td> <img src="data:image/jpg;base64,<%=user.getImage()%>" width="40" height="30" /></td>
                        <% String fullName= user.getFirstName();
                            fullName+=" "+user.getLastName();
                        %>

                        <td><%=fullName%></td>
                        <td><%=user.getEmail()%></td>
                        <td><%=user.getDateOfBirth()%></td>
                        <td>Active</td>
                        <% int roleId = user.getRoleId();
                            String role=(roleId==1)?"Admin":"User";
                        %>
                        <td><%=role%></td>
                        <td ><a class="lock-icon"> <i class="ti-unlock" /></a></td>
                        <td > &nbsp;&nbsp;<a href="userListController?action=edit&userId=<%=user.getUser_id()%>"><i style="color: #00aaff" class="ti-pencil-alt"></i></a>&nbsp;&nbsp;
                            <a  href="userListController?action=delete&userId=<%=user.getUser_id()%>" class="trash-icon"><i class="ti-trash"/></a></td>

                    </tr>
                    <%}%>
                </table>
                <br/>
                <br/>
                <div style="display: flex">
                    <% for (int i=0;i<=listOfUsers.size()/10+1;i++) { %>
                    <table>
                        <td class="pagination" >
                            <a href="userListController?action=pagination&pageId=<%=-10+(i*10)%>"><%=i+1%></a>
                        </td>
                    </table>
                    <% }%>
                </div>
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
