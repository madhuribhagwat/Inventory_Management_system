package com.project.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.web.Model.Inventory;
import com.project.web.Model.admin;
import com.project.web.Reposity.InventoryInfo;
import com.project.web.Reposity.admininfo;


@Controller
public class InventoryHandler
{

	@Autowired
	private InventoryInfo repo;
	@Autowired
	private admininfo adminrepo;
	
	@RequestMapping("/")
	public String home()
	{
		return "Admin";
	}
	
	@RequestMapping("/addstudent")
	public String addstudent(@ModelAttribute Inventory student) {
		System.out.println(student.getId());
		System.out.println(student.getName());
		System.out.println(student.getQuality());
		System.out.println(student.getUser());
		System.out.println(student.getEmail());
		System.out.println(student.getPhone());
			
		repo.save(student);
		
		return "redirect:/get";
	}
	
	@RequestMapping("/get")
	public String getdata(Model m)
	{
		List<Inventory> al=repo.findAll();
		
		m.addAttribute("e_data",al);
		
		System.out.println(al);
		return "listUser";
	}
	
	@RequestMapping("/{id}")
	public String deleteuser(@PathVariable int id)
	{
		repo.deleteById(id);
		
		return "redirect:/get";
	}
	
	@RequestMapping("/edit/{id}")
	public String editform(@PathVariable int id,Model m)
	{
		Inventory ob=repo.findById(id).get();
		
		m.addAttribute("std1",ob);
		return "editform";
	}
	
	@RequestMapping("/update/{id}")
	public String updatedata(@PathVariable int id, @ModelAttribute Inventory us)
	{
		Inventory user=repo.findById(id).orElse(null);
		
		if(user!=null)
		{
			user.setName(us.getName());
			user.setQuality(us.getQuality());
			user.setUser(us.getUser());
			user.setEmail(us.getEmail());
			user.setPhone(us.getPhone());
			
			repo.save(user);
		}
		return "redirect:/get";
	}
	
	
	
	
	
	
	@RequestMapping("/admin")
	public String home12()
	{
		return "Admin";
	}
	
	
	
	@RequestMapping("/addadmin")
	public String abcd(@ModelAttribute admin dh)
	{
		adminrepo.save(dh);
		
		return "Registration";
	}

	
}
