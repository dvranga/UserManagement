<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file="css/sideNavBar.css"%>
    </style>

</head>
<body>
<div id="mySidenav" class="sidenav">
    <button class="dropdown-user"><i class="ti-files"></i>  WebPages
        <i class="fa fa-caret-left"></i>
    </button>
    <div class="user-container">
        <a href="dummy2">WebPage  1</a>
        <a href="dummy">WebPage  2</a>
        <a href="#">WebPage  3</a>

    </div>
    <a href="#"><i class="ti-id-badge"> </i>Profile</a>
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
</script>
</body>
</html>