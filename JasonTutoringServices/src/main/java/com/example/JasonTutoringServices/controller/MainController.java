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

}
