<%@ page import="com.bridgelabz.usermanagement.model.User" %>
<html>

<head>
    <title>User Dashboard</title>
    <style><%@include file="/css/dashboard.css"%></style>
</head>
<body style="background-color: aliceblue;margin: 0">
<%User user=(User)session.getAttribute("user");
    String fullName=user.getFirstName();
    if(user.getMiddleName()!=null){
        fullName+=" "+user.getMiddleName();
    }
    fullName+=" "+user.getLastName();
%>

<div class="header-panel">
    <%@include file="toolBar.jsp" %>
</div>
<div class="body-panel">
    <div class="sidenav-pannel">
        <%@include file="sideNavBar.jsp"%>
    </div>
    <div class="main-content">
        <div class="title">
            <div class="title-name"> Welcome&nbsp;<%=fullName%>
                <p class="tagline">You last logged in on: </p>
            </div>
            <div class="title-link">
                <i style="margin-left: 50%" class="fa fa-home"></i>
                <a class="home-icon" href="dashboard">Home</a>
                <a> / Dashboard</a>
            </div>
        </div>

    </div>
</div>
</body>
</html>
