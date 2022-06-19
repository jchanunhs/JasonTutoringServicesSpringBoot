package com.example.JasonTutoringServices.controller;

import com.example.JasonTutoringServices.dao.TicketRepo;
import com.example.JasonTutoringServices.model.Ticket;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class TicketController {

    @Autowired
    TicketRepo repo;

    @RequestMapping("/addTicket")
    public ModelAndView addTicket(Ticket ticket, RedirectAttributes redirectAttributes) {
        ModelAndView mv = new ModelAndView();
        int id = (int) (Math.random() * 1000000) + 1000000; //Id is 7 digits long
        ticket.setId(id);

        if (repo.existsById(id)) {
            redirectAttributes.addFlashAttribute("message", "Error: Unable to save form.");
        } else {
            redirectAttributes.addFlashAttribute("message", "Thank you for your inquries! Your Ticket ID: " + id);
            repo.save(ticket);
        }
        mv.setViewName("redirect:/contact");
        return mv;
    }
    
    @RequestMapping("/getTicket")
    public ModelAndView getTicket(Ticket ticket, RedirectAttributes redirectAttributes) {
        ModelAndView mv = new ModelAndView();
        if (repo.existsById(ticket.getId())) {
            Ticket ticket_holder = repo.findById(ticket.getId()).get();
            List<Ticket> ticket_list = new ArrayList<Ticket>();
            ticket_list.add(ticket_holder);
            mv.addObject("ticket_list",ticket_list);
            mv.setViewName("AdminPanel.jsp");
        } else {
            redirectAttributes.addFlashAttribute("message", "Error: Ticket ID " + ticket.getId() + " does not exist.");
            mv.setViewName("redirect:/admin");
        }
        return mv;
    }
    
    @RequestMapping("/deleteTicket")
    public ModelAndView deleteTicket(Ticket ticket, RedirectAttributes redirectAttributes) {
        ModelAndView mv = new ModelAndView();
        if (repo.existsById(ticket.getId())) {
            repo.deleteById(ticket.getId());
            redirectAttributes.addFlashAttribute("message", "Ticket ID " + ticket.getId() + " deleted successfully.");
        } else {
            redirectAttributes.addFlashAttribute("message", "Error: Ticket ID " + ticket.getId() + " does not exist.");
        }
        mv.setViewName("redirect:/admin");
        return mv;
    }

}
