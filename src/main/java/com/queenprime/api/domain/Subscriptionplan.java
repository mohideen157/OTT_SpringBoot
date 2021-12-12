package com.queenprime.api.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "subscriptionplan")

public class Subscriptionplan {
	
	@Id
	@GeneratedValue
	private Integer id;
	private String name;
	private String description;
	private String planValue;
	private String planType;
	private Integer validitydays;
	private String users;
	private Integer isactive;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPlanValue() {
		return planValue;
	}
	public void setPlanValue(String planValue) {
		this.planValue = planValue;
	}
	public String getPlanType() {
		return planType;
	}
	public void setPlanType(String planType) {
		this.planType = planType;
	}
	
	public Integer getValiditydays() {
		return validitydays;
	}
	public void setValiditydays(Integer validitydays) {
		this.validitydays = validitydays;
	}
	public String getUsers() {
		return users;
	}
	public void setUsers(String users) {
		this.users = users;
	}
	public Integer getIsactive() {
		return isactive;
	}
	public void setIsactive(Integer isactive) {
		this.isactive = isactive;
	}
	

}
