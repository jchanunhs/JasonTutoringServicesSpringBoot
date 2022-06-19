package com.example.JasonTutoringServices.dao;

import com.example.JasonTutoringServices.model.Admin;
import java.util.Optional;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface AdminRepo extends CrudRepository<Admin, Integer> {

    Admin findByUsernameAndPassword(String username, String password);
    
}
