package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "receptionist_table")
public class Receptionist implements Serializable
{
 
  private static final long serialVersionUID = 1L;
  @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  @Column(name = "name", length = 50, nullable = false)
  private String name;
  @Column(name = "gender", length = 10, nullable = false)
  private String gender;
  @Column(name = "email", length = 50, nullable = false, unique = true)
  private String email; 
  @Column(name = "password", length = 50, nullable = false)
  private String password;
  @Column(name = "contactno", length = 50, nullable = false, unique = true)
  private String contactno;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
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
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}

}