package com.example.JasonTutoringServices.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/")
    public String home() {
        return "index.jsp";
    }

    @RequestMapping("/about")
    public String about() {
        return "about.jsp";
    }

    @RequestMapping("/services")
    public String services() {
        return "services.jsp";
    }
    
    @RequestMapping("/contact")
    public String contact() {
        return "contact.jsp";
    }
    
    @RequestMapping("/jobs")
    public String jobs() {
        return "jobs.jsp";
    }
    
    @RequestMapping("/faq")
    public String faq() {
        return "faq.jsp";
    }

    @RequestMapping("/whycs")
    public String whycs() {
        return "whycs.jsp";
    }
    
}
