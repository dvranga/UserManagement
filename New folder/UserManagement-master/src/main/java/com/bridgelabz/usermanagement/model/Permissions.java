package com.bridgelabz.usermanagement.model;

public class Permissions {

    private boolean dashboardAdd;
    private boolean dashboardDelete;
    private boolean dashboardModify;
    private boolean dashboardRead;
    private boolean SettingsAdd;
    private boolean SettingsDelete;
    private boolean SettingsModify;
    private boolean SettingsRead;
    private boolean UserInformationAdd;
    private boolean UserInformationDelete;
    private boolean UserInformationModify;
    private boolean UserInformationRead;
    private boolean webPage1Add;
    private boolean webPage1Delete;
    private boolean webPage1Modify;
    private boolean webPage1Read;
    private boolean webPage2Add;
    private boolean webPage2Delete;
    private boolean webPage2Modify;
    private boolean webPage2Read;
    private boolean webPage3Add;
    private boolean webPage3Delete;
    private boolean webPage3Modify;
    private boolean webPage3Read;

    public Permissions() {
    }

    public Permissions(boolean dashboardAdd, boolean dashboardDelete, boolean dashboardModify, boolean dashboardRead,
                       boolean settingsAdd, boolean settingsDelete, boolean settingsModify, boolean settingsRead,
                       boolean userInformationAdd, boolean userInformationDelete, boolean userInformationModify, boolean userInformationRead,
                       boolean webPage1Add, boolean webPage1Delete, boolean webPage1Modify, boolean webPage1Read,
                       boolean webPage2Add, boolean webPage2Delete, boolean webPage2Modify, boolean webPage2Read,
                       boolean webPage3Add, boolean webPage3Delete, boolean webPage3Modify, boolean webPage3Read) {
        this.dashboardAdd = dashboardAdd;
        this.dashboardDelete = dashboardDelete;
        this.dashboardModify = dashboardModify;
        this.dashboardRead = dashboardRead;
        SettingsAdd = settingsAdd;
        SettingsDelete = settingsDelete;
        SettingsModify = settingsModify;
        SettingsRead = settingsRead;
        UserInformationAdd = userInformationAdd;
        UserInformationDelete = userInformationDelete;
        UserInformationModify = userInformationModify;
        UserInformationRead = userInformationRead;
        this.webPage1Add = webPage1Add;
        this.webPage1Delete = webPage1Delete;
        this.webPage1Modify = webPage1Modify;
        this.webPage1Read = webPage1Read;
        this.webPage2Add = webPage2Add;
        this.webPage2Delete = webPage2Delete;
        this.webPage2Modify = webPage2Modify;
        this.webPage2Read = webPage2Read;
        this.webPage3Add = webPage3Add;
        this.webPage3Delete = webPage3Delete;
        this.webPage3Modify = webPage3Modify;
        this.webPage3Read = webPage3Read;
    }

    public boolean isDashboardAdd() {
        return dashboardAdd;
    }

    public boolean isDashboardDelete() {
        return dashboardDelete;
    }

    public boolean isDashboardModify() {
        return dashboardModify;
    }

    public boolean isDashboardRead() {
        return dashboardRead;
    }

    public boolean isSettingsAdd() {
        return SettingsAdd;
    }

    public boolean isSettingsDelete() {
        return SettingsDelete;
    }

    public boolean isSettingsModify() {
        return SettingsModify;
    }

    public boolean isSettingsRead() {
        return SettingsRead;
    }

    public boolean isUserInformationAdd() {
        return UserInformationAdd;
    }

    public boolean isUserInformationDelete() {
        return UserInformationDelete;
    }

    public boolean isUserInformationModify() {
        return UserInformationModify;
    }

    public boolean isUserInformationRead() {
        return UserInformationRead;
    }

    public boolean isWebPage1Add() {
        return webPage1Add;
    }

    public boolean isWebPage1Delete() {
        return webPage1Delete;
    }

    public boolean isWebPage1Modify() {
        return webPage1Modify;
    }

    public boolean isWebPage1Read() {
        return webPage1Read;
    }

    public boolean isWebPage2Add() {
        return webPage2Add;
    }

    public boolean isWebPage2Delete() {
        return webPage2Delete;
    }

    public boolean isWebPage2Modify() {
        return webPage2Modify;
    }

    public boolean isWebPage2Read() {
        return webPage2Read;
    }

    public boolean isWebPage3Add() {
        return webPage3Add;
    }

    public boolean isWebPage3Delete() {
        return webPage3Delete;
    }

    public boolean isWebPage3Modify() {
        return webPage3Modify;
    }

    public boolean isWebPage3Read() {
        return webPage3Read;
    }
}