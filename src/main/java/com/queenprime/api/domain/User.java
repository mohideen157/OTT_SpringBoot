package com.queenprime.api.domain;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.sql.Date;
import javax.persistence.*;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String firstName;
	private String lastName;
	private String userName;
	private String email;
	private String password;
	@Column(name="mobile_no")
	private String mobile;
	private Date signUpDate;
	private Integer isSubscribed;
    private Integer isactive;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public Date getSignUpDate() {
		return signUpDate;
	}
	public void setSignUpDate(Date signUpDate) {
		this.signUpDate = signUpDate;
	}
	public Integer getIsSubscribed() {
		return isSubscribed;
	}
	public void setIsSubscribed(Integer isSubscribed) {
		this.isSubscribed = isSubscribed;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public User(){}

	public User(Integer id, String firstName, String lastName, String userName, String email, String password, String mobile, Date signUpDate, Integer isSubscribed){
       this.id=id;
       this.firstName=firstName;
       this.lastName=lastName;
       this.userName=userName;
       this.email=email;
       this.password=password;
       this.mobile=mobile;
       this.signUpDate=signUpDate;
       this.isSubscribed=isSubscribed;
	}
	public Integer getIsactive() {
		return isactive;
	}
	public void setIsactive(Integer isactive) {
		this.isactive = isactive;
	}
	//new added
	
}