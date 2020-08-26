<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tool Bar</title>
    <style>
       <%@include file="css/toolBar.css"%>
    </style>
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

    <script>
        function toggleNav(){
            navSize = document.getElementById("mySidenav").style.width;
            if (navSize == "250px") {
                return closeNav();
            }
            return openNav();
        }
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main-content").style.marginLeft="240px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main-content").style.marginLeft="0px";
        }

    </script>

</div>





</body>
</html>
