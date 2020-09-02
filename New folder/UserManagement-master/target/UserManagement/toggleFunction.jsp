<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
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