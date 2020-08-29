<html>
<%@ page import="com.bridgelabz.usermanagement.model.User" %>
<%
    User user = (User)request.getAttribute("user");
    String fullName = user.getFirstName();
    if(user.getLastName()!=null){
        fullName+=" "+user.getLastName();
    }
%>

<head>
    <title>User Dashboard</title>
    <%@include file="toolBar.jsp"%>
    <%@include file="sideNavBar.jsp"%>
    <style><%@include file="css/dashboard.css"%></style>
</head>
<body style="background-color: aliceblue;margin: 0">

<div class="main" id="main-content">

    <div class="content-heading ">
        <div class="contain">
        <div class="left-heading">
            <div style="height: 50%;">
                <p class="username">Welcome
                    <%=fullName%>
                </p>
            </div>
        </div>
        </div>
    </div>

</div>

<script>
    function toggleNav(){
        navSize = document.getElementById("mySidenav").style.width;
        if (navSize == "16%") {
            return closeNav();
        }
        return openNav();
    }
    function openNav() {
        document.getElementById("mySidenav").style.width = "16%";
        document.getElementById("main-content").style.marginLeft="16%";
        document.getElementById("toggleId").className="ti-arrow-circle-left"
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0%";
        document.getElementById("main-content").style.marginLeft="0%";
        document.getElementById("toggleId").className="ti-arrow-circle-right"
    }

</script>

</body>
</html>