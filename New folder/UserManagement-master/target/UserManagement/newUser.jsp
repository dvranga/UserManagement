<html>
<head>
    <title>New User</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
    <style>
        <%@include file="css/newUser.css"%>
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/css/dropify.min.css">
    <jsp:include page="toolBar.jsp"></jsp:include>
    <jsp:include page="sideNavBar.jsp"></jsp:include>
</head>
<body >
<form action="servlet/Register" method="post">
<div class="scroll-arrow">
<div  class="main" id="new-user-main">
    <div class="title">
        <div class="title-name">New User</div>
        <div class="title-link">
            <i style="margin-left: 50%" class="fa fa-home"></i>
            <a class="home-icon" href="dashboard.jsp">Home</a>
            <a>&nbsp;/&nbsp;NewUser</a>
        </div>
    </div>
    <div class="middle-container">
        <div class="new-user">
            <div class="new-user-box">
                <div class="web-page-header">General</div>
                <div class="general-div">
                    <table class="general-table">
                        <tr class="row1">
                            <td class="column-1-1">
                                <div class="first-name">First Name</div>
                            </td>
                            <td class="column-1-2">
                                <div class="middle-name">Middle Name</div>
                            </td>
                            <td class="column-1-3">
                                <div class="last-name">Last Name</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="column-2-1">
                                <div class="column21">
                                    <input type="text" name="firstName" class="first-name-input">
                                </div>
                            </td>
                            <td class="column-2-2">
                                <div class="column22">
                                    <input type="text" name="middleName" class="middle-name-input">
                                </div>
                            </td>
                            <td class="column-2-3">
                                <div class="column23">
                                    <input type="text" name="lastName" class="last-name-input">
                                </div>
                            </td>
                        </tr>


                        <tr class="row1">
                            <td class="column-date-of-birth">
                                <div >
                                    <div class="date-of-birth">Date of Birth</div>
                                </div>
                            </td>
                            <td class="column-gender">
                                <div >
                                    <div class="gender">Gender</div>
                                </div>
                            </td>
                            <td class="column-country">
                                <div >
                                    <div class="country">Country</div>
                                </div>
                            </td>
                        </tr>


                        <tr >
                            <td class="column-date-of-birth-input">
                                <div class="date-of-birth-input-column21">
                                    <input   name="dateOfBirth" placeholder="dd-mm-yyyy" type="date" id="start" class="date-of-birth-input"  min="1990-01-01" max="2020-12-31">
                                </div>
                            </td>
                            <td class="column-middle-name-input">
                                <div class="middle-name-input-column22">
                                    <select id="gender" class="middle-name-input" name="gender">
                                        <option >Select</option>
                                        <option value="F">Female</option>
                                        <option value="M">Male</option>
                                    </select>
                                </div>
                            </td>
                            <td class="column-last-name-input">
                                <div class="last-name-input-column23">
                                    <select id="country" class="last-name-input" name="country">
                                        <option value="Select">Select</option>
                                        <option value="India">India</option>
                                        <option value="Pakistan">Russia</option>
                                        <option value="America">America</option>
                                        <option value="England">England</option>
                                        <option value="Australia">Australia</option>
                                        <option value="Srilanka">Srilanka</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr class="row1">
                            <td class="column-1-1">
                                <div class="phone">Phone</div>
                            </td>
                            <td class="column-1-2">
                                <div class="phoneext">Phone + Ext</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="column-2-1">
                                <div class="phoneinputcolumn21">
                                    <input type="text"  name="phone" class="phoneinput">
                                </div>
                            </td>
                            <td class="column-2-2">
                                <div class="phonecolumn22">
                                    <input type="text" name="phone_Ext" class="phoneinputcolumn22">
                                </div>
                            </td>
                        </tr>
                        <tr class="row1">
                            <td class="column-1-1">
                                <div class="email">Email</div>
                            </td>
                            <td class="column-1-2">
                                <div class="address">Address</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="column-2-1">
                                <div class="email-column21">
                                    <input type="text"  name="email" class="email-input">
                                </div>
                            </td>
                            <td class="column-2-2">
                                <div class="address-column22">
                        <textarea rows = "5" cols = "50"  class="address-input" name = "address">
                            </textarea>
                                </div>
                            </td>
                        </tr>

                    </table>
                    <hr>
                    <table class="general-table">
                        <tr class="row1">
                            <td class="column-1-1">
                                <div class="user-name">Username</div>
                            </td>
                            <td class="column-1-2">
                                <div class="password">Password</div>
                            </td>
                            <td class="column-1-3">
                                <div class="conform-password">Conform Password</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="column-2-1">
                                <div class="usernamecolumn21">
                                    <input type="text" name="userName" class="usernamecolumn21input">
                                </div>
                            </td>
                            <td class="column-2-2">
                                <div class="passwordcolumn22">
                                    <input type="text" name="password" class="passwordcolumn22input">
                                </div>
                            </td>
                            <td class="column-2-3">
                                <div class="conformpasswordcolumn23">
                                    <input type="text" name="conformPassword" class="conformpasswordinput">
                                </div>
                            </td>
                        </tr>


                        <tr class="row1">
                            <td class="column-date-of-birth">
                                <div >
                                    <div class="userrole">User Role</div>
                                </div>
                            </td>
                        </tr>

                        <tr >
                            <td class="column-date-of-birth-input">
                                <div class="userrolecolumn21">
                                    <select id="user-role" class="userrolecolumn21input" name="userRole">
                                        <option value="">Select</option>
                                        <option value="1">Admin</option>
                                        <option value="0">User</option>
                                    </select>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

        </div>

        <div class="photo-container">
            <div class="photo-heading">Photo</div>
            <div class="acceptance">Acceptable image formats are jpg,jpeg,png & gif.</div>
            <div class="image-size-title">Maximum image size allowed is 2MB.</div>
            <div class="photo-input">
                <label class="custom-file-upload">
                    <input type="file"/>
                    <div class="cloud">
                        <i class="ti-cloud-up"></i>
                    </div>
                    Click here to choose any image
                </label>
            </div>
        </div>
        
    </div>
    <div class="permissions">
        <div class="permission-box">
            <div class="permission-header">Permissions</div>
            <div class="panel">
                <table>
                    <tr>
                        <th>Web&nbsp;Page</th>
                        <th> <input type="checkbox" class="check-box">&nbsp;Add</th>
                        <th><input type="checkbox" class="check-box">&nbsp;Delete</th>
                        <th><input type="checkbox" class="check-box">&nbsp;Modify</th>
                        <th><input type="checkbox" class="check-box">&nbsp;Read</th>
                    </tr>
                    <tr>
                        <td>Dashboard</td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>

                    </tr>
                    <tr>
                        <td>Settings</td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>

                    </tr>
                    <tr>
                        <td>User&nbsp;Information</td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>

                    </tr>
                    <tr>
                        <td>Web&nbsp;Page&nbsp;1</td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>

                    </tr>
                    <tr>
                        <td>Web&nbsp;Page&nbsp;2</td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>

                    </tr>
                    <tr>
                        <td>Web&nbsp;Page&nbsp;3</td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>
                        <td><input type="checkbox" class="check-box"></td>

                    </tr>
                </table>


            </div>

        </div>
    </div>
    <div class="bottom-container">
        <input class="submit-button" type="submit">
        <input class="reset-button" type="submit" value="Reset">
    </div>

</div>
<script>
    function toggleNav(){
        navSize = document.getElementById("mySidenav").style.width;
        if (navSize == "250px") {
            return closeNav();
        }
        return openNav();
    }
    function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
        document.getElementById("main-content").style.marginLeft="240px";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main-content").style.marginLeft="0px";
    }

</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>
</div>
</form>
</body>
</html>