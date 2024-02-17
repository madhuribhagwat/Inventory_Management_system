package com.project.web.Reposity;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.web.Model.Inventory;

public interface InventoryInfo extends JpaRepository<Inventory, Integer> 
{
     public Inventory name(String name);
}

