package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "patient_registrations")
public class Patient implements Serializable
{
   private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
      private int id;
    @Column(length = 20,nullable = false)
      private String name;
    @Column(length = 10,nullable = false)
      private String gender;
    @Column(length = 20,nullable = false)
      private String dateofbirth;
    @Column(length = 40,nullable = false)
      private String address;
    @Column(nullable = false)
    private int age;
    @Column(nullable = false)
      private int weight;
    @Column(length = 30,nullable = false,unique = true)
      private String email;
    @Column(length = 30,nullable = false,unique = true)
      private String phone;
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
  public String getDateofbirth() {
    return dateofbirth;
  }
  public void setDateofbirth(String dateofbirth) {
    this.dateofbirth = dateofbirth;
  }
  public String getAddress() {
    return address;
  }
  public void setAddress(String address) {
    this.address = address;
  }
  public int getAge() {
    return age;
  }
  public void setAge(int age) {
    this.age = age;
  }
  public int getWeight() {
    return weight;
  }
  public void setWeight(int weight) {
    this.weight = weight;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  
  public String getPhone() {
    return phone;
  }
  public void setPhone(String phone) {
    this.phone = phone;
  }
  public static long getSerialversionuid() {
    return serialVersionUID;
  }
}