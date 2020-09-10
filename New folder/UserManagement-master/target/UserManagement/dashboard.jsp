<%@ page import="com.bridgelabz.usermanagement.model.Location" %>
<%@ page import="com.bridgelabz.usermanagement.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>

<head>
    <title>User Dashboard</title>
    <style>
        <%@include file="css/dashboard.css"%></style>
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
                <p class="tagline">You last logged in on:<%=session.getAttribute("lastLoginDetails")%> </p>
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
                        <div class="status-value"><%=session.getAttribute("totalUsers")%></div>
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
                        <div class="status-value"><%=session.getAttribute("activeusers")%></div>
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
                        <div class="status-value"><%=session.getAttribute("inactiveUsers")%></div>
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
                        <table class="alltimebuttons">
                            <tr>
                                <td>
                                    <button class="button-alltime">
                                        <a> All Time</a>
                                    </button>
                                </td>
                                <td>
                                    <button class="button-2020">
                                        <a> 2020</a>
                                    </button>
                                </td>
                                <td>
                                    <button class="button-month">
                                        <a>September</a>
                                    </button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="graphic-right">
                        <div class="location-section">
                            <div class="section-heading">
                                Top Location
                            </div>
                            <div class="location-table-container">
                                <%List<Location> locations= (ArrayList<Location>) session.getAttribute("toplocations");%>
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
<%--                                <%for (int k = 1; k < locations.size(); k++) {%>--%>
<%--                                    <table class="location-table" >--%>
<%--                                        <tr>--%>
<%--                                            <td><%=k%></td>--%>
<%--                                            <td style="width: 60%"><%=locations.get(k-1).getCountryName()%></td>--%>
<%--                                            <td style="width: 30%"><%=locations.get(k-1).getUsersCount()%></td>--%>
<%--                                        </tr>--%>
<%--                                    </table>--%>
<%--                                <%}%>--%>
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
                                <table style="margin-top: -5%">
                                    <tr>
                                        <td class="gender">Male</td>
                                        <td><%=session.getAttribute("malePercentage")%>%</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="malepercent">
                                                <div class="maleprogressbar malehtmlstyle"></div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="gender">Female</td>
                                        <td><%=session.getAttribute("femalePercentage")%>%</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="femalepercent">
                                                <div class="femaleprogressbar femalehtmlstyle"></div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="age-section">
                            <div class="section-heading">
                                Age Group
                            </div>
                        </div>
                        <div>
                            <table class="age-group">
                                <tr >
                                    <td style="width: 10px">
                                        18-22
                                    </td>
                                    <td style="width: 50px">
                                        <div class="age-18"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        23-27
                                    </td>
                                    <td style="width: 50px">
                                        <div class="age-23"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        28-32
                                    </td>
                                    <td style="width: 50px">
                                        <div class="age-28"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        33-42
                                    </td>
                                    <td style="width: 50px">
                                        <div class="age-33"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        over 42
                                    </td>
                                    <td style="width: 50px">
                                        <div class="age-42"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        under 18
                                    </td>
                                    <td style="width: 50px">
                                        <div class="age-under-18"></div>
                                    </td>
                                </tr>
                            </table>
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
                    <%List<User> latestRegistartion=(List<User>)session.getAttribute("listOfUsers"); %>
                    <%for (int i = latestRegistartion.size()-1; i >0; i--) {%>

                    <table style="border-collapse: collapse;border-bottom: 1px solid #efeef2" class="latest-registation-table">
                        <tr>
                            <td >
                                <div style="display: flex;">
                                    <div class="size-controller">
                                        <div class="latest-user-wrapper">
                                            <img src="data:images/jpg;base64,<%=latestRegistartion.get(i).getImage()%>" style="width: 65px;margin-left: -32px;margin-top: -30px;">
                                        </div>
                                    </div>
                                    <div class="latest-user-name">
                                        <div class="latest-userName"><a><%=latestRegistartion.get(i).getUserName()%></a></div>
                                        <div class="latest-userName-status"><h><%=latestRegistartion.get(i).getCreator_stamp()%></h></div>
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