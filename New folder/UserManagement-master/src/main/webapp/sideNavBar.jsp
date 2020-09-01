<head>
    <style>
        <%@include file="css/sideNavBar.css"%>
    </style>

</head>
<body>
<div id="mySidenav" class="sidenav">
    <a href="#" id="dashboard"><i class="ti-dashboard" > </i>Dashboard</a>
    <button class="dropdown-user"><i class="ti-files"></i>  WebPages
        <i class="fa fa-caret-left"></i>
    </button>
    <div class="user-container">
        <a href="dummy2">WebPage  1</a>
        <a href="dummy">WebPage  2</a>
        <a href="#">WebPage  3</a>

    </div>
    <button class="dropdown-user" id="users"><i class="ti-user" > </i>Users
        <i class="fa fa-caret-left"></i>
    </button>
    <div class="user-container">
        <a href="newUser">New  User</a>
        <a href="#">Users  List</a>
    </div>
    <a href="#"><i class="ti-id-badge"> </i>Profile</a>
    <button class="dropdown-user" id="settings"><i class="ti-settings" > </i>Settings
        <i class="fa fa-caret-left"></i>
    </button>
    <div class="user-container">
        <a href="authentication">Authentication</a>
        <a href="#">Email SMTP</a>
        <a href="#">Database Connection</a>
    </div>
    <a href="logout.jsp"><i class="ti-power-off"> </i> Logout</a>
    <div class="tab-close-button">
        <i style="color:white; margin-left: 50px; cursor: pointer"
           class="ti-arrows-horizontal" onclick="toggleNav()"> </i>
    </div>
</div>


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

    var roleId=${roleId}
   if (roleId === 0) {
        document.getElementById("dashboard").style.display="none";
        document.getElementById("users").style.display="none";
        document.getElementById("settings").style.display="none";
    }
   
</script>
</body>
</html>