package com.queenprime.api.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "categories")
public class Categories {
  @Id
  @GeneratedValue
  private Integer id;
  private String name;
  private Integer isactive;
  @OneToMany(targetEntity = Entities.class,cascade = CascadeType.ALL)
  @JoinColumn(name="categoryId", referencedColumnName = "id")
  private List<Entities> entities;
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
public List<Entities> getEntities() {
	return entities;
}
public void setEntities(List<Entities> entities) {
	this.entities = entities;
}
public Integer getIsactive() {
	return isactive;
}
public void setIsactive(Integer isactive) {
	this.isactive = isactive;
}


  
}