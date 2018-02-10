package com;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="NIIT_USER")
public class User {
	
 @Id @GeneratedValue(strategy=GenerationType.AUTO)
 @Column(name="ID")
 private int id;
 
 @Column(name="ACCNO")
 private String accno;
 @Column(name="NAME")
 private String name;
 @Column(name="MOBNO")
 private String mobno;
 @Column(name="EMAIL")
 private String email;
 
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getAccno() {
	return accno;
}
public void setAccno(String accno) {
	this.accno = accno;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getMobno() {
	return mobno;
}
public void setMobno(String mobno) {
	this.mobno = mobno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
 
}