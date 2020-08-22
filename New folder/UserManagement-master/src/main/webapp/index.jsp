<html>
<head>
    <title>User Management</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <style><%@include file="css/login.css"%>
    </style>

</head>
<body>


<div class="container">
    <div class="login-form">
        <div>
            <img src="images/mi.jpeg">
            <p>Login to your account</p>
        </div>
        <form action="AdminController" method="post">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="   Username" name="username" required="required"
                pattern="^[A-Z].{6,}$">
            </div><br/>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="  Password" name="password" required="required"
                pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">
            </div><br/>
            <div class="reminder">
                <label class="switch1">
                    <input style="height: 15px" class="check-box" type="checkbox">
                    <span class="slider round"></span>
                </label>
                <span>Remember Me</span>
            </div>
            <input type="submit" name="login" value="LOGIN" class="btn btn-primary btn-lg btn-block">
        </form>
        <i class="fa fa-lock" style="margin-left: -140px"></i>
        <a  style="margin-top: -15px" href="forgotPassword.jsp">Forgot Password?</a>
    </div>
    <div class="app-name">
        <div class="heading">
            <h1>User Management</h1>
            <h2>Version 2.2</h2>
        </div>

    </div>
</div>
</body>
</html>





