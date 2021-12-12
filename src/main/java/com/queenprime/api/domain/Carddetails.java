package com.queenprime.api.domain;

import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonInclude(JsonInclude.Include.NON_NULL)
@Entity
@Table(name = "carddetails")

public class Carddetails {




  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;
  private Integer userId;
  private String name;
  private String cardno	;
  private String expirydate;
  private Integer cvv;
  
  
  
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCardno() {
		return cardno;
	}
	public void setCardno(String cardno) {
		this.cardno = cardno;
	}
	public String getExpirydate() {
		return expirydate;
	}
	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}
	public Integer getCvv() {
		return cvv;
	}
	public void setCvv(Integer cvv) {
		this.cvv = cvv;
	}
	
	public Carddetails(){}
	public Carddetails(Integer id, Integer userId, String name, String cardno, String expirydate, Integer cvv) {
	      this.id = id;
	      this.userId = userId;
	      this.name = name;
	      this.cardno = cardno;
	      this.expirydate = expirydate;
	      this.cvv = cvv;
	      
	  }
  
}