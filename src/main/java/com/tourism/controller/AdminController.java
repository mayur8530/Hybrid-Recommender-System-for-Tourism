package com.tourism.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	@GetMapping("/index")
    public String home(Model model) {
        model.addAttribute("message", "Welcome to the Tourism System");
        return "index";  // returns index.jsp
    }  
}
