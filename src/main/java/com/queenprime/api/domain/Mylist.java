package com.queenprime.api.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


import javax.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "mylist")

public class Mylist {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private Integer userId;
	private String entityId;
	//@OneToMany(targetEntity = Entities.class,cascade = CascadeType.ALL)
	//@JoinColumn(name="id", referencedColumnName = "entityId")
	//private List<Entities> entities;
	 public Mylist(){}
	   public Mylist(Integer id, Integer userId, String entityId) 
	   {
	       this.id = id;
	       this.userId = userId;
	       this.entityId = entityId;  
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
	public String getEntityId() {
		return entityId;
	}
	public void setEntityId(String entityId) {
		this.entityId = entityId;
	}
	

}
