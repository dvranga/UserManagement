var addingCheckBoxes = ["dashboard_add", "user_info_add", "settings_add","w1_add","w2_add","w3_add"];
var deleteCheckBoxes = ["dashboard_delete", "user_info_delete", "settings_delete","w1_delete","w2_delete","w3_delete"];
var modifyCheckBoxes = ["dashboard_modify", "user_info_modify", "settings_modify","w1_modify","w2_modify","w3_modify"];
var readCheckBoxes = ["dashboard_read", "user_info_read", "settings_read","w1_read","w2_read","w3_read"];
var additionalPermissions = ['add','delete','modify','read'];
var adminPermissions = addingCheckBoxes.concat(deleteCheckBoxes,additionalPermissions,modifyCheckBoxes,readCheckBoxes);



var userAddingCheckBoxes = ["w1_add","w2_add","w3_add"];
var userModifyCheckBoxes = ["user_info_modify","w1_modify","w2_modify","w3_modify"];
var userReadCheckBoxes = ["w1_read","w2_read","w3_read"];
var userPermissions = userAddingCheckBoxes.concat(userModifyCheckBoxes,userReadCheckBoxes);


function userRolePermissions(event) {
var role = event.value;

switch(role) {
case "Admin":
    for(i = 0; i < adminPermissions.length; i++) {
        checkBox = adminPermissions[i];
        document.getElementById(checkBox).checked = true;
    }
break;
case "User":
    for(i = 0; i < adminPermissions.length; i++) {
        checkBox = adminPermissions[i];
        document.getElementById(checkBox).checked = false;
    }
    for(i = 0; i < userPermissions.length; i++) {
        checkBox = userPermissions[i];
        document.getElementById(checkBox).checked = true;
    }
break;
}
}

        function onCheck(inputId) {
        var checkBoxId = document.getElementById(inputId);
            switch(inputId) {
                case "add":
                checkboxes = addingCheckBoxes;
                break;
                case "delete":
                checkboxes = deleteCheckBoxes;
                break;
                case "modify":
                checkboxes = modifyCheckBoxes;
                break;
                case "read":
                checkboxes = readCheckBoxes;
                break;
            }

            if (checkBoxId.checked == true){
                for(i = 0; i < checkboxes.length; i++) {
                    checkBox = checkboxes[i];
                    document.getElementById(checkBox).checked = true;
                }

            }


            else {
                for(i = 0; i < checkboxes.length; i++) {
                    checkBox = checkboxes[i];
                    document.getElementById(checkBox).checked = false;
                }
            }
        }


function isCheck(inputId) {


    switch(inputId) {
        case "addingCheckBoxes":
            value=0;
            for(i = 0; i < addingCheckBoxes.length; i++) {
                checkBox = addingCheckBoxes[i];
                if (document.getElementById(checkBox).checked == false) {
                    value=1;
                }
            }
            if (value == 0) {
                checkBox = additionalPermissions[0];
                document.getElementById(checkBox).checked = true;
            }
            break;
        case "deleteCheckBoxes":
            value1=0;
            for(i = 0; i < deleteCheckBoxes.length; i++) {
                checkBox = deleteCheckBoxes[i];
                if (document.getElementById(checkBox).checked == false) {
                    value1=1;
                }
            }
            if (value1 == 0) {
                checkBox = additionalPermissions[1];
                document.getElementById(checkBox).checked = true;
            }
            break;
        case "modifyCheckBoxes":
            value2=0;
            for(i = 0; i < modifyCheckBoxes.length; i++) {
                checkBox = modifyCheckBoxes[i];
                if (document.getElementById(checkBox).checked == false) {
                    value2=1;
                }
            }
            if (value2 == 0) {
                checkBox = additionalPermissions[2];
                document.getElementById(checkBox).checked = true;
            }
            break;
        case "readCheckBoxes":
            value3=0;
            for(i = 0; i < readCheckBoxes.length; i++) {
                checkBox = readCheckBoxes[i];
                if (document.getElementById(checkBox).checked == false) {
                    value3=1;
                }
            }
            if (value3 == 0) {
                checkBox = additionalPermissions[3];
                document.getElementById(checkBox).checked = true;
            }
            break;
    }

}