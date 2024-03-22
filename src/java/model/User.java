/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author THevY
 */
public class User {
    private String userId;
    private String username;
    private String password;
    private String name;
    private String telNum;
    private int isAdmin;
    private String Email;

    public User() {
    }

    public User(String userId, String username, String password, String name, String telNum, int isAdmin, String Email) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.name = name;
        this.telNum = telNum;
        this.isAdmin = isAdmin;
        this.Email = Email;
    }

    

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelNum() {
        return telNum;
    }

    public void setTelNum(String telNum) {
        this.telNum = telNum;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

   
    
   

}

    

   
