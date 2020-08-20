<html>
<head>
    <title>User DashBoard</title>
    <style><%@include file="./css/dashboard.css"%></style>
</head>
<body>
<div class="container">
    <div class="column-header">User Management</div>
    <div class="dropdown">
        <h4 class="dropbtn"><%=session.getAttribute("username")%></h4>
        <div class="dropdown-content">
            <a href="#">Profile</a>
            <a href="#">Logout</a>

        </div>
    </div>
</div>
</div>
<h1>Welcome</h1>
</body>
</html>