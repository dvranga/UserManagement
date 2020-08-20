<html>
<head>
    <title>User Management</title>
    <style><%@include file="./css/login.css"%></style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
<div class="container">
    <div class="login-form">
        <div>
            <img src="resources/mi-logo.jpg">
            <p>Login to your account</p>
        </div>
        <form action="AdminController" method="post">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="  Username" name="username" required="required">
            </div><br/>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="  Password" name="userpass" required="required">
            </div><br/>
            <br />
            <div class="reminde">
                <label class="switch1">
                    <input class="check-box" type="checkbox">
                    <span class="slider round"></span>
                </label>
                <span>Remember Me</span>
            </div>
            <br />
            <br />
            <button type="submit">LOGIN</button>
        </form>
        <i class="fa fa-lock" style="margin-left: -140px"></i>
        <a href="forgotPassword.jsp" style="margin-top: -14px">Forgot Password?</a>
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