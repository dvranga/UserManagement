<%--
  Created by IntelliJ IDEA.
  User: Heros
  Date: 8/27/2020
  Time: 9:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Toggle Function</title>
</head>
<body>

<script>
    function toggleNav(){
        navSize = document.getElementById("mySidenav")
        if (navSize.style.display==="block") {
            return closeNav();
        }
        return openNav();
    }
    function openNav() {
        document.getElementById("mySidenav").style.display = "block";
        document.getElementById("toggleId").className="ti-arrow-circle-left"
        document.getElementsByClassName("main-content").style.width="20%"
    }

    function closeNav() {
        document.getElementById("mySidenav").style.display="none";
        document.getElementById("toggleId").className="ti-arrow-circle-right"
        document.getElementsByClassName("main-content").style.width="0%"
    }

</script>
</body>
</html>