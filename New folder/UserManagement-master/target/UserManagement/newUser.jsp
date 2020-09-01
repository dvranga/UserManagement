<html>
<head>
    <title>New User</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <style><%@include file="css/newUser.css"%>
    </style>
</head>
<body style="margin:0;display: block">
<div class="header-panel">
    <%@include file="toolBar.jsp" %>
</div>
<div class="body-panel">
    <div class="sidenav-pannel">
        <%@include file="sideNavBar.jsp"%>
    </div>
    <div class="main-content">

        <div class="title">
            <div class="title-name">New User</div>

            <div class="title-link">
                <i style="margin-left: 50%" class="fa fa-home"></i>
                <a class="home-icon" href="webPages/dashboard.jsp">Home</a>
                <a> / NewUser</a>
            </div>
        </div>

        <form action="register" method="post">
        <div class="middle-container">
            <div class="new-user">
                <div class="new-user-box">
                    <div class="web-page-header">General</div>
                    <div class="general-div">
                        <span class="result">${helperText}</span>

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
                                        <input type="text" name="firstName" class="first-name-input" required="required">
                                    </div>
                                </td>
                                <td class="column-2-2">
                                    <div class="column22">
                                        <input type="text" name="middleName" class="middle-name-input" >
                                    </div>
                                </td>
                                <td class="column-2-3">
                                    <div class="column23">
                                        <input type="text" name="lastName" class="last-name-input" required="required">
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
                                        <input placeholder="dd-mm-yyyy"  name="dateOfBirth" onclick="currentDate()" type="date" id="start" class="date-of-birth-input"  min="1990-01-01" max="2020-12-31" >
                                    </div>
                                </td>
                                <td class="column-middle-name-input">
                                    <div class="middle-name-input-column22">
                                        <select id="gender" class="middle-name-input" name="gender" required="required">
                                            <option >Select</option>
                                            <option value="F">Female</option>
                                            <option value="M">Male</option>
                                        </select>
                                    </div>
                                </td>
                                <td class="column-last-name-input">
                                    <div class="last-name-input-column23">
                                        <select id="country" class="last-name-input" name="country" required="required">
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
                                        <input type="text"  name="phone" class="phoneinput" required="required">
                                    </div>
                                </td>
                                <td class="column-2-2">
                                    <div class="phonecolumn22">
                                        <input type="text" name="phone_Ext" class="phoneinputcolumn22" >
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
                                        <input type="text"  name="email" class="email-input" required="required">
                                    </div>
                                </td>
                                <td class="column-2-2">
                                    <div class="address-column22">
                        <textarea rows = "5" cols = "50"  class="address-input" name = "address" >
                            </textarea>
                                    </div>
                                </td>
                            </tr>

                        </table>

                        <hr class="hr">
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
                                        <input type="text" name="userName" class="usernamecolumn21input" required="required">
                                    </div>
                                </td>
                                <td class="column-2-2">
                                    <div class="passwordcolumn22">
                                        <input type="password" name="password" class="passwordcolumn22input" required="required">
                                    </div>
                                </td>
                                <td class="column-2-3">
                                    <div class="conformpasswordcolumn23">
                                        <input type="text" name="conformPassword" class="conformpasswordinput" required="required">
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
                                        <select  class="userrolecolumn21input" name="userRole"  onchange="userRolePermissions(this)" required="required">
                                            <option value="">Select</option>
                                            <option value="Admin">Admin</option>
                                            <option value="User">User</option>
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
                <div class="acceptance" style="display:flex;justify-content: center">Acceptable image formats are jpg,jpeg,png & gif.</div>
                <div class="image-size-title" style="display:flex;justify-content: center">Maximum image size allowed is 2MB.</div>
                <div class="photo-input">
                    <label class="custom-file-upload">
                        <input name="image" type="file"/>
                        <div class="cloud">
                            <i class="ti-cloud-up"></i>
                        </div>
                      <div style="display:flex;justify-content: center">Click here to choose any image</div>
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
                            <th>Web Page</th>
                            <th> <input type="checkbox" class="check-box" name="add"  id="add" onchange="onCheck('add')" value="true"  >
                             <input type="hidden" name="add"   value="false" >Add</th>
                            <th>
                                <input type="checkbox" class="check-box" name="delete" id="delete" onchange="onCheck('delete')" value="true">
                                <input type="hidden" name="delete"   value="false" >
                                Delete</th>
                            <th>
                                <input type="checkbox" class="check-box" name="modify" id="modify" onchange="onCheck('modify')" value="true">
                                                              <input type="hidden" name="modify"   value="false" >
                                Modify</th>
                            <th>
                                <input type="checkbox" class="check-box" name="read" id="read" onchange="onCheck('read')" value="true">
                                <input type="hidden" name="read"   value="false" >
                                Read</th>
                        </tr>
                        <tr>
                            <td>Dashboard</td>
                            <td><input name="dashboard_add" id="dashboard_add"  type="checkbox" class="check-box" onclick="permissionAdd()" onchange="isCheck('addingCheckBoxes')" value="true">
                                <input type="hidden" name="dashboard_add"   value="false" >
                            </td>
                            <td><input name="dashboard_delete" id="dashboard_delete" type="checkbox"  class="check-box" onchange="isCheck('deleteCheckBoxes')" value="true">
                            <input type="hidden" name="dashboard_delete" value="false"></td>
                            <td><input name="dashboard_modify" id="dashboard_modify" type="checkbox" class="check-box" onchange="isCheck('modifyCheckBoxes')" value="true">
                                <input type="hidden" name="dashboard_modify" value="false"></td>
                            <td><input name="dashboard_read" id="dashboard_read" type="checkbox" class="check-box" onchange="isCheck('readCheckBoxes')" value="true">
                                <input type="hidden" name="dashboard_read" value="false">
                            </td>

                        </tr>
                        <tr>
                            <td>Settings</td>
                            <td><input name="settings_add" id="settings_add" type="checkbox" class="check-box" onclick="permissionAdd()" onchange="isCheck('addingCheckBoxes')" value="true">
                                <input type="hidden" name="settings_add"   value="false">
                            </td>
                            <td><input name="settings_delete" id="settings_delete" type="checkbox" class="check-box" onchange="isCheck('deleteCheckBoxes')" value="true">
                                <input type="hidden" name="settings_delete"   value="false" >

                            </td>
                            <td><input name="settings_modify" id="settings_modify" type="checkbox" class="check-box" onchange="isCheck('modifyCheckBoxes')" value="true">
                                <input type="hidden" name="settings_modify"   value="false" >
                            </td>
                            <td><input name="settings_read" id="settings_read" type="checkbox" class="check-box" onchange="isCheck('readCheckBoxes')" value="true">
                                <input type="hidden" name="settings_read"   value="false" >
                            </td>

                        </tr>
                        <tr>
                            <td>User Information</td>
                            <td><input  name="user_info_add" id="user_info_add" type="checkbox" class="check-box" onchange="isCheck('addingCheckBoxes')" value="true">
                                <input type="hidden" name="user_info_add"   value="false" >
                            </td>
                            <td><input name="user_info_delete" id="user_info_delete" type="checkbox" class="check-box" onchange="isCheck('deleteCheckBoxes')" value="true">
                                <input type="hidden" name="user_info_delete"   value="false" >
                            </td>
                            <td><input name="user_info_modify" id="user_info_modify" type="checkbox" class="check-box" onchange="isCheck('modifyCheckBoxes')" value="true">
                                <input type="hidden" name="user_info_modify"   value="false" >
                            </td>
                            <td><input name="user_info_read" id="user_info_read" type="checkbox" class="check-box" onchange="isCheck('readCheckBoxes')" value="true">
                                <input type="hidden" name="user_info_read"   value="false" >
                            </td>

                        </tr>
                        <tr>
                            <td>Web Page 1</td>
                            <td><input name="w1_add" id="w1_add" type="checkbox" class="check-box" onchange="isCheck('addingCheckBoxes')" value="true">
                                <input type="hidden" name="w1_add"   value="false" >
                            </td>
                            <td><input name="w1_delete" id="w1_delete" type="checkbox" class="check-box" onchange="isCheck('deleteCheckBoxes')" value="true">
                                <input type="hidden" name="w1_delete"   value="false" >
                            </td>
                            <td><input name="w1_modify" id="w1_modify" type="checkbox" class="check-box" onchange="isCheck('modifyCheckBoxes')" value="true">
                                <input type="hidden" name="w1_modify"   value="false" >
                            </td>
                            <td><input name="w1_read" id="w1_read" type="checkbox" class="check-box" onchange="isCheck('readCheckBoxes')" value="true">
                                <input type="hidden" name="w1_read"   value="false" >
                            </td>

                        </tr>
                        <tr>
                            <td>Web Page 2</td>
                            <td><input name="w2_add" id="w2_add" type="checkbox" class="check-box" onchange="isCheck('addingCheckBoxes')" value="true">
                                <input type="hidden" name="w2_add"   value="false" >
                            </td>
                            <td><input name="w2_delete" id="w2_delete" type="checkbox" class="check-box" onchange="isCheck('deleteCheckBoxes')" value="true">
                                <input type="hidden" name="w2_delete"   value="false" >
                            </td>
                            <td><input name="w2_modify" id="w2_modify" type="checkbox" class="check-box" onchange="isCheck('modifyCheckBoxes')" value="true">
                                <input type="hidden" name="w2_modify"   value="false" >
                            </td>
                            <td><input name="w2_read" id="w2_read" type="checkbox" class="check-box" onchange="isCheck('readCheckBoxes')" value="true">
                                <input type="hidden" name="w2_read"   value="false" >
                            </td>

                        </tr>
                        <tr>
                            <td>Web Page 3</td>
                            <td><input name="w3_add" id="w3_add" type="checkbox" class="check-box" onchange="isCheck('addingCheckBoxes')" value="true">
                                <input type="hidden" name="w3_add"   value="false" >
                            </td>
                            <td><input name="w3_delete" id="w3_delete" type="checkbox" class="check-box" onchange="isCheck('deleteCheckBoxes')" value="true">
                                <input type="hidden" name="w3_delete"   value="false" >
                            </td>
                            <td><input name="w3_modify" id="w3_modify" type="checkbox" class="check-box" onchange="isCheck('modifyCheckBoxes')" value="true">
                                <input type="hidden" name="w3_modify"   value="false" >
                            </td>
                            <td><input name="w3_read" id="w3_read" type="checkbox" class="check-box" onchange="isCheck('readCheckBoxes')" value="true">
                                <input type="hidden" name="w3_read"   value="false" >
                            </td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
        <div class="bottom-container">
            <input class="submit-button" type="submit" >
            <input class="reset-button" type="submit" value="Reset">
        </div>

        </form>
    </div>
</div>

</div>

</div>
</div>
<script>
    <%@include file="toggleFunction.jsp"%>
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.min.js"></script>
<script type="text/javascript">
    <%@include file ="UserPermission.js" %>
</script>
<script>
    <%@include file="CurrentDate.js"%>
</script>

</body>
</html>