<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New User</title>
    <jsp:include page="sideNavBar.jsp"></jsp:include>
    <jsp:include page="toolBar.jsp"></jsp:include>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
    <style>
        <%@include file="css/newUser.css"%>
    </style>
</head>
<body class="body">
<div class="title">
    <div class="title-name">New User</div>
</div>
<div class="home">
    <div class="home-icon">
        <a><i class="fa fa-home"></i><span class="color">Home</span>&nbsp;/&nbsp;New User</a>
    </div>
</div>
<div class="new-user">
<div class="new-user-box">
<div class="web-page-header">General</div>

</div>
</div>
<div class="permissions">
    <div class="permission-box">
        <div class="permission-header">Permissions</div>

    </div>
</div>

<div class="row">
    <div class="text-center">
        <input type="submit" name=submit" value="Submit" tabindex="17" class="submit">
        <input type="button" class="reset" value="Reset" onclick="">
    </div>
</div>
</body>
</html>
