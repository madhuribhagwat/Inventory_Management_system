package com.project.web.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Inventory
{
	@Id
	private int id;
	private String name;
	private String quality;
	private String user;
	private String email;
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
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
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
	public Inventory(int id, String name, String quality, String user, String email, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.quality = quality;
		this.user = user;
		this.email = email;
		this.phone = phone;
	}
	public Inventory() 
	{
		
	}
	@Override
	public String toString() {
		return "Inventory [id=" + id + ", name=" + name + ", quality=" + quality + ", user=" + user + ", email=" + email
				+ ", phone=" + phone + "]";
	}
	
	
	
	
	
	
}
