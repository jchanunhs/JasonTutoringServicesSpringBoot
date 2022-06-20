package com.example.JasonTutoringServices.controller;

import com.example.JasonTutoringServices.dao.AdminRepo;
import com.example.JasonTutoringServices.dao.TicketRepo;
import com.example.JasonTutoringServices.model.Admin;
import com.example.JasonTutoringServices.model.Ticket;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        Cookie cookies[] = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("AdminID")) {
                    if (repo.existsById(Integer.valueOf(cookie.getValue()))) {
                        List<Ticket> ticket_list = ticket_repo.findAll();
                        mv.addObject("ticket_list", ticket_list);
                        mv.setViewName("AdminPanel.jsp");
                        return mv;
                    }
                }
            }
        }
        //default if not authenticated
        mv.setViewName("AdminLogin.jsp");
        return mv;
    }

    @RequestMapping("/admin/login")
    public ModelAndView Adminlogin(Admin admin, HttpServletRequest request, RedirectAttributes redirectAttributes, HttpServletResponse response) {
        ModelAndView mv = new ModelAndView();
        Admin admin_authenticate = repo.findByUsernameAndPassword(admin.getUsername(), admin.getPassword());
        if (admin_authenticate != null) {
            Cookie cookie = new Cookie("AdminID", String.valueOf(admin_authenticate.getId()));
            cookie.setMaxAge(60*60*24); 
            response.addCookie(cookie);
        } else {
            redirectAttributes.addFlashAttribute("message", "Error: invalid username or password.");
        }
        mv.setViewName("redirect:/admin");
        return mv;
    }

    @RequestMapping("/admin/logout")
    public ModelAndView AdminLogout(HttpServletRequest request, RedirectAttributes redirectAttributes,HttpServletResponse response) {
        ModelAndView mv = new ModelAndView();
        Cookie cookie = new Cookie("AdminID", "");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        redirectAttributes.addFlashAttribute("message", "Logged out successfully");
        mv.setViewName("redirect:/admin");
        return mv;
    }

}
