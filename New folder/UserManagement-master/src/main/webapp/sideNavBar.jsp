<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SideNarBar</title>
    <style><%@include file="css/dashboard.css"%></style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
</head>
<body>
<div id="mySidenav" class="sidenav">
    <a href="#"><i class="ti-dashboard"></i>&nbsp;&nbsp;&nbsp;Dashboard</a>
    <button class="dropdown-user"> <i class="ti-files"></i>&nbsp;&nbsp;WebPages
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-caret-left"></i>
    </button>
    <div class="user-container">
        <a href="webpage1.jsp">WebPage &nbsp;1</a>
        <a href="webpage2.jsp">WebPage &nbsp;2</a>
        <a href="webpage3.jsp">WebPage &nbsp;3</a>

    </div>
    <button class="dropdown-user"><i class="ti-user"></i>&nbsp;&nbsp;Users
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-caret-left"></i>
    </button>
    <div class="user-container">
        <a href="newUser.jsp">New &nbsp;User</a>
        <a href="#">Users &nbsp;List</a>
    </div>
    <a href="#"><i class="ti-id-badge"></i>&nbsp;&nbsp;Profile</a>
    <button class="dropdown-user"><i class="ti-settings"></i>&nbsp;&nbsp;Settings
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class="fa fa-caret-left"></i>
    </button>
    <div class="user-container">
        <a href="#">Authentication</a>
        <a href="#">Email&nbsp;SMTP</a>
        <a href="#">Database&nbsp;Connection</a>
    </div>
    <a href="logout"><i class="ti-power-off"></i>&nbsp;&nbsp;Logout</a>
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
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
    }


</script>

<script>
    var dropdown = document.getElementsByClassName("dropdown-user");
    var i;

    for (i = 0; i < dropdown.length; i++) {
        dropdown[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var dropdownContent = this.nextElementSibling;
            if (dropdownContent.style.display === "block") {
                dropdownContent.style.display = "none";
            } else {
                dropdownContent.style.display = "block";
            }
        });
    }
</script>

</body>
</html>
