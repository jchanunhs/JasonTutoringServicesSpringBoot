package com.example.JasonTutoringServices.dao;

import com.example.JasonTutoringServices.model.Ticket;
import org.springframework.data.repository.CrudRepository;

public interface TicketRepo extends CrudRepository<Ticket, Integer> {

}
