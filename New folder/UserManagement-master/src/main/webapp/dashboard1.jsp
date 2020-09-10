<%@ page import="com.bridgelabz.usermanagement.model.User" %>
<%@ page import="com.bridgelabz.usermanagement.model.Location" %>
<%@ page import="java.util.List" %>
<html>

<head>
    <title>User Dashboard</title>
    <style><%@include file="css/dashboard.css"%></style>
</head>
<body style="background-color: aliceblue;margin: 0">
<%User user=(User)session.getAttribute("user");
    String fullName=user.getFirstName();
    if(user.getMiddleName()!=null){

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
            <div class="title-name"> Welcome <%=fullName%>
                <p class="tagline">You last logged in on: <%=session.getAttribute("lastLoggedIn")%> </p>
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
                        <div class="alltimebuttons">
                            <div >
                                <button class="button-alltime">
                                    <a> All Time</a>
                                </button>
                            </div>
                            <div >
                                <button class="button-2020">
                                    <a> 2020</a>
                                </button>
                            </div>
                            <div >
                                <button class="button-month">
                                    <a>September</a>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="graphic-right">
                        <div class="location-section">
                            <div class="section-heading">
                                Top Location
                            </div>
                            <div class="location-table-container">
                                <% List<Location> toplocatons = (List<Location>) session.getAttribute("toplocatons");%>
                                <%for (int k = 1; k <=toplocatons.size(); k++) {%>
                                <table class="location-table" >
                                    <tr>
                                        <td><%=k%></td>
                                        <td class="countryName"><%=toplocatons.get(k-1).getCountryName()%></td>
                                        <td class="countryCount"><%=toplocatons.get(k-1).getUsersCount()%></td>
                                    </tr>
                                </table>
                                <%}%>
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
                                        <td  class="gender-value"><%=session.getAttribute("malePercentage")%> %</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="malepercent">
                                                <div class="maleprogressbar malehtmlstyle" id="male"></div>
                                                <script>
                                                    document.getElementById("male").style.width=<%=session.getAttribute("malePercentage")%>
                                                        console.log("width", document.getElementById("male").style.width)
                                                </script>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="gender">Female</td>
                                        <td class="gender-value"><%=session.getAttribute("femalePercentage")%> %</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="femalepercent">
                                                <div class="femaleprogressbar femalehtmlstyle" id="female"></div>
                                            </div>
                                            <script>
                                                document.getElementById("female").style.width=<%=session.getAttribute("femalePercentage")%>
                                                    console.log("width", document.getElementById("female").style.width)
                                            </script>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="age-section">
                            <div class="section-heading">
                                Age Group
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
            </div>
            <div class="registration-container">
                <div class="registration-header-pannel">
                    <div class="Latest">Latest registration</div>
                    <div style="text-align: right; margin-left: 25%; margin-top: 1%"><a href="userListController?action=showUsers&pageId=10" class="load-more">Load More</a></div>

                </div>
                <table class="latest-registation-table">
                    <tr>
                        <td>
                            <div class="registartion-box">
                                <%List<User> latestRegistartion=(List<User>)session.getAttribute("listOfUsers"); %>
                                <%for (int i = latestRegistartion.size()-1; i >latestRegistartion.size()-6; i--) {%>

                                <table style="border-collapse: collapse;border-bottom: 1px solid #efeef2" class="latest-registation-table">
                                    <tr>
                                        <td >
                                            <div style="display: flex;">
                                                <div class="size-controller">
                                                    <div class="latest-user-wrapper">
                                                        <img src="data:image/jpg;base64,<%=latestRegistartion.get(i).getImage()%>" style="width: 65px;margin-left: -32px;margin-top: -30px;">
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
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="footer">
        </div>
    </div>
</div>
</body>
</html>