<html>

<head>
    <title>User Dashboard</title>
    <%@include file="toolBar.jsp"%>
    <%@include file="sideNavBar.jsp"%>
    <style><%@include file="css/dashboard.css"%></style>
</head>
<body style="background-color: aliceblue;margin: 0">

<div class="main" id="main-content">

    <div class="content-heading ">
        <div class="left-heading">
            <div style="height: 50%;">
                <p class="username">Welcome
                    Ranganath Devangam
                </p>
            </div>
            <div style="height: 50%;">
                <p class="page-subtitle">You are </p>
            </div>

        </div>
        <div class="right-heading">
            <i class="fa fa-home"></i>
            <a class="home" href="dashboard.jsp"> Home</a>
            <a> / Dashboard</a>
        </div>


    </div>

</div>
<jsp:include page="toggleFunction.jsp"></jsp:include>

</body>
</html>