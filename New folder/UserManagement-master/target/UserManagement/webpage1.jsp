<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web Page1</title>
    <jsp:include page="sideNavBar.jsp"></jsp:include>
    <jsp:include page="toolBar.jsp"></jsp:include>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
    <style>
        <%@include file="css/webapps.css"%>
    </style>
</head>
<body class="body">
<div class="title">
    <div class="title-name">Webpages1</div>
    <div class="sub-title">Permissions granted for webpages 1</div>
</div>
<div class="home">
    <div class="home-icon">
        <a><i class="fa fa-home"></i><span class="color">Home</span>&nbsp;/&nbsp;Webpage 1</a>
    </div>
</div>
<div class="permissions">
<div class="permission-box">
<div class="web-page-header">Webpage Permissions</div>
    <table class="table-no-border">
        <tbody>
        <tr>
            <td style="width: 60%">
                <span class="inputLabel">Add Permission</span>
            </td>
            <td>
                <div class="reminder">
                    <label class="switch1">
                        <input style="height: 15px" class="check-box" type="checkbox">
                        <span class="slider round"></span>
                    </label>
                </div>
            </td>
        </tr>
        <tr></tr>
        <tr>
            <td style="width: 60%">
                <span class="inputLabel">Delete Permission</span>
            </td>
            <td>
                <div class="reminder">
                    <label class="switch1">
                        <input style="height: 15px" class="check-box" type="checkbox">
                        <span class="slider round"></span>
                    </label>
                </div>
            </td>
        </tr>
        <tr></tr>

        <tr>
            <td style="width: 60%">
                <span class="inputLabel">Modify Permission</span>
            </td>
            <td>
                <div class="reminder">
                    <label class="switch1">
                        <input style="height: 15px" class="check-box" type="checkbox">
                        <span class="slider round"></span>
                    </label>
                </div>
            </td>
        </tr>
        <tr></tr>

        <tr>
            <td style="width: 60%">
                <span class="inputLabel">Read Permission</span>
            </td>
            <td>
                <div class="reminder">
                    <label class="switch1">
                        <input style="height: 15px" class="check-box" type="checkbox">
                        <span class="slider round"></span>
                    </label>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</div>
</body>
</html>
