package com.javatpoint.beans;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


//Model class
public class Form {
	private String name;
	private String tcno;
	private String address;
	private String phone;
	private String email;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birth;
	private String quest3;
	private String quest1;
	private String quest2;
	private int investmentAmount;
	private String additions;

	
	public String getName() {
	  return name;
	  
	}
	  
	public void setName(String name) {
	  this.name = name;
	  
	}
	  
	  
	public String getTcno() {
	  return tcno;
	  
	}
	  
	  
	public void setTcno(String tcno) {
	  this.tcno = tcno;
	}
	  
	  
	public String getAddress() {
	  return address;
	  
	}
	  
	  
	public void setAddress(String address) {
	  this.address = address;
	  
	}
	  
	  
	public String getPhone() {
	  return phone;
	  
	}
	  
	  
	public void setPhone(String phone) {
	  this.phone = phone;
	  
	}
	  
	  
	public String getEmail() {
	  return email;
	  
	}
	  
	  
	public void setEmail(String email) {
	  this.email = email;
	  
	}
	  
	  
	public Date getBirth() {
	  return birth;
	  
	}
	  
	  
	public void setBirth(Date birth) {
		this.birth = birth;
	  
	}
	  
	  
	public String getQuest3() {
	  return quest3;
	  
	}
	  
	  
	public void setQuest3(String quest3) {
		  this.quest3 = quest3;
		  
	}
	  
	  
	public String getQuest1() {
		  return quest1;
	  
	}
	  
	  
	public void setQuest1(String quest1) {
		  this.quest1 = quest1;
	  
	}
	  
	  
	public String getQuest2() {
		  return quest2;
	  
	}
	  
	  
	public void setQuest2(String quest2) {
		  this.quest2 = quest2;
	  
	}
	  
	  
	public int getInvestmentAmount() {
		  return investmentAmount;
	  
	}
	  
	  
	public void setInvestmentAmount(int amount) {
		  this.investmentAmount = amount;
	  
	}
	  
	  
	public String getAdditions() {
		  return additions;
	  
	}
	  
	  
	public void setAdditions(String additions) {
		  this.additions = additions;
	  
	}

}
