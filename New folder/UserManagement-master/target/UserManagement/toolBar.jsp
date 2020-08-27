<html>

<head>
    <title>User DashBoard</title>
    <style><%@include file="css/toolBar.css"%></style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style="margin: 0">
<div class="container">

    <div class="column-header">User Management</div>

    <h5 class="open-button"  onclick="toggleNav()"><i class="ti-arrow-circle-left" id="toggleId"></i> </h5>
    <div class="user-name-container">
        <h4 class="drop-button">${username}
            <div class="dropdown-content">
                <a href="#"><i class="ti-user"></i>  Profile</a>
                <a href="logout.jsp"><i class="ti-power-off"></i>  Logout</a>
            </div>

        </h4
    </div>
</div>
</div>
</div>
<%@include file="toggleFunction.jsp" %>
</body>
</html>