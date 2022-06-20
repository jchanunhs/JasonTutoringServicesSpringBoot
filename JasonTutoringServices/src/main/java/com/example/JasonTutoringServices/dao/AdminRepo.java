package com.example.JasonTutoringServices.dao;

import com.example.JasonTutoringServices.model.Admin;
import org.springframework.data.repository.CrudRepository;


public interface AdminRepo extends CrudRepository<Admin, Integer> {

    Admin findByUsernameAndPassword(String username, String password);
    
}
