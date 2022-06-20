package com.example.JasonTutoringServices.controller;

import com.example.JasonTutoringServices.dao.AdminRepo;
import com.example.JasonTutoringServices.dao.TicketRepo;
import com.example.JasonTutoringServices.model.Admin;
import com.example.JasonTutoringServices.model.Ticket;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AdminController {

    @Autowired
    AdminRepo repo;

    @Autowired
    TicketRepo ticket_repo;

    @RequestMapping("/admin")
    public ModelAndView AdminPage(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("AdminID");
        if (id == null) {
            mv.setViewName("AdminLogin.jsp");
        } else {
            List<Ticket> ticket_list = ticket_repo.findAll();
            mv.addObject("ticket_list",ticket_list);
            mv.setViewName("AdminPanel.jsp");
        }
        return mv;
    }

    @RequestMapping("/admin/login")
    public ModelAndView Adminlogin(Admin admin, HttpServletRequest request, RedirectAttributes redirectAttributes) {
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        Admin admin_authenticate = repo.findByUsernameAndPassword(admin.getUsername(), admin.getPassword());
        if (admin_authenticate != null) {
            session.setAttribute("AdminID", String.valueOf(admin.getId()));
        } else {
            redirectAttributes.addFlashAttribute("message", "Error: invalid username or password.");
        }
        mv.setViewName("redirect:/admin");
        return mv;
    }
    
        @RequestMapping("/admin/logout")
    public ModelAndView AdminLogout(HttpServletRequest request,RedirectAttributes redirectAttributes) {
        ModelAndView mv = new ModelAndView();
        HttpSession session = request.getSession();
        session.removeAttribute("AdminID");
        redirectAttributes.addFlashAttribute("message", "Logged out successfully");
        mv.setViewName("redirect:/admin");
        return mv;
    }
    
}
