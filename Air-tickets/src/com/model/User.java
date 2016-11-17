package com.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
 
@Entity
@Table(name="USER_TABLE")
public class User implements Serializable {
     
    @Id @GeneratedValue
    private String id;
    private String Name;
   
    @Id
    private String email;
    private String password;
    private String contact;
 
    public User() {
    }
 
     
    public User(String Name, String email, String password,String contact) {
        this.Name = Name;
        this.email = email;
        this.password = password;
    }
 
 
    public String getId() {
        return id;
    }
 
     public void setId(String id) {
        this.id = id;
    }
 
    public String getName() {
        return Name;
    }
 
    public void setName(String Name) {
        this.Name = Name;
    }
 
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    } 
    public String getcontact() {
        return contact;
    }
 
    public void setcontact(String contact) {
        this.contact = contact;
    }
 
}
