package com.queenprime.api.domain;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Entity
@Table(name = "subscription")
public class Subscription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer userId;
    private String planId;
    private String expiryDate;
    private String remainingDate;
    private String paymentStatus;
	private String misc1;
    private String misc2;
    private Integer isactive;
    public Subscription(){}
    public Subscription(Integer id, Integer userId, String planId, String expiryDate, String remainingDate, String paymentStatus, String misc1, String misc2, Integer isactive) 
    {
        this.id = id;
        this.userId = userId;
        this.planId = planId;
        this.expiryDate = expiryDate;
        this.remainingDate = remainingDate;
        this.paymentStatus = paymentStatus;
        this.misc1 = misc1;
        this.misc2 = misc2;
        this.isactive = isactive;
        
       
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getPlanId() {
		return planId;
	}
	public void setPlanId(String planId) {
		this.planId = planId;
	}
	public String getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}
	public String getRemainingDate() {
		return remainingDate;
	}
	public void setRemainingDate(String remainingDate) {
		this.remainingDate = remainingDate;
	}
	public String getPaymentStatus() {
		return paymentStatus;
	}
	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	public String getMisc1() {
		return misc1;
	}
	public void setMisc1(String misc1) {
		this.misc1 = misc1;
	}
	public String getMisc2() {
		return misc2;
	}
	public void setMisc2(String misc2) {
		this.misc2 = misc2;
	}
	public Integer getIsactive() {
		return isactive;
	}
	public void setIsactive(Integer isactive) {
		this.isactive = isactive;
	}

    
}
