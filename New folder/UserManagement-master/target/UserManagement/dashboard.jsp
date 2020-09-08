<%@ page import="com.bridgelabz.usermanagement.model.User" %>
<html>

<head>
    <title>User Dashboard</title>
    <style><%@include file="css/dashboard.css"%></style>
</head>
<body style="background-color: #F5F6F9;margin: 0">
<%User user=(User)session.getAttribute("user");%>

<div class="header-panel">
    <%@include file="toolBar.jsp" %>
</div>
<div class="body-panel">
    <div class="sidenav-pannel">
        <%@include file="sideNavBar.jsp"%>
    </div>
    <div class="main-content">
        <div class="title">
            <div class="title-name"> Welcome <%=user.getFirstName()+" "+user.getLastName()%>
                <p class="tagline">You last logged in on: </p>
            </div>
            <div class="title-link">
                <i style="margin-left: 50%" class="fa fa-home"></i>
                <a class="home-icon" href="dashboard">Home</a>
                <a> / Dashboard</a>
            </div>
        </div>
        <div class="widgets">
            <div class="widget1">
                <div class="widget-container">
                    <div class="widget-left">
                    <span style="background-color: #0E9BE2" class="icon-wrapper">
                        <i class="ti-user"></i>
                    </span>
                    </div>
                    <div class="widget-right">
                        <div class="status">TOTAL</div>
                        <div class="status-value">163</div>
                    </div>
                </div>
            </div>
            <div class="widget1">
                <div class="widget-container">
                    <div class="widget-left">
                    <span style="background-color: #1DBB8E" class="icon-wrapper">
                        <i class="ti-check"></i>
                    </span>
                    </div>
                    <div class="widget-right">
                        <div class="status">ACTIVE</div>
                        <div class="status-value">162</div>
                    </div>
                </div>

            </div>
            <div class="widget1">
                <div class="widget-container">
                    <div class="widget-left">
                    <span style="background-color: #ff4402" class="icon-wrapper">
                        <i class="ti-na"></i>

                    </span>
                    </div>
                    <div class="widget-right">
                        <div class="status">INACTIVE</div>
                        <div class="status-value">1</div>
                    </div>
                </div>

            </div>
            <div class="widget1">
                <div class="widget-container">
                    <div class="widget-left">
                    <span style="background-color: #F3BB23" class="icon-wrapper">
                        <i class="ti-eye"></i>
                    </span>
                    </div>
                    <div class="widget-right">
                        <div class="status">ONLINE</div>
                        <div class="status-value">1</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-container">
            <div class="graphic-container">
                <div class="graphic-header-pannel">
                    All Time Registration History
                </div>
                <div class="graphic-body" style="display:flex;">
                    <div class="graphic-left">

                    </div>
                    <div class="graphic-right">
                        <div class="location-section">
                            <div class="section-heading">
                                Top Location
                            </div>
                            <div class="location-table-container">
                                <table class="location-table" >
                                    <tr>
                                        <td>1</td>
                                        <td>Pakistan</td>
                                        <td>44</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>India</td>
                                        <td>6</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>America</td>
                                        <td>60</td>
                                    </tr>
                                </table>
                                <div class="locations-link">
                                    <a>See All Locations</a>
                                </div>
                            </div>
                        </div>
                        <div class="gender-section">
                            <div class="section-heading">
                                Gender
                            </div>
                            <div class="gender-table">
                                <table>
                                    <tr>
                                        <td class="gender">Male</td>
                                        <td>65.5%</td>
                                    </tr>
                                    <tr>
                                        <td class="gender">Female</td>
                                        <td>34.5</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="age-section">
                            <div class="section-heading">
                                Age Group
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="registration-container">
                <div class="registration-header-pannel">
                    <div class="Latest">Latest registration</div>
                    <div style="text-align: right; margin-left: 25%; margin-top: 1%"><a class="load-more">Load More</a></div>

                </div>
                <div class="overflow" >
                <%for (int i = 0; i < 15; i++) {%>
                <table style="border-collapse: collapse;border-bottom: 1px solid #efeef2" class="latest-registation-table">
                        <tr>
                            <td >
                                <div style="display: flex;">
                                    <div class="size-controller">
                                        <div class="latest-user-wrapper">
                                            <img src="images/profile_image.jpeg" style="width: 65px;margin-left: -32px;margin-top: -30px;">
                                        </div>
                                    </div>
                                    <div class="latest-user-name">
                                        <div class="latest-userName"><h>Ranganath Devangm</h></div>
                                        <div class="latest-userName-status"><h>yesterday 1:00 AM</h></div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                </table>
                <%}%>
                </div>
            </div>
        </div>
        <div class="footer">
        </div>
    </div>
</div>
</body>
</html>