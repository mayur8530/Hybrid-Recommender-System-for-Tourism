package com.tourism.controller;

import java.util.List; // Correct import
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tourism.modal.Attraction;
import com.tourism.service.AttractionService;

@Controller
public class UserController {

    @Autowired
    private AttractionService attractionService;

    // Display the form to add a new attraction
    @GetMapping("/attraction")
    public String showAttractionForm(Model model) {
        model.addAttribute("message", "Attraction saved successfully!"); 
        return "attraction"; // Return the attraction form view
    }

    // Save the attraction to the database
    @PostMapping("/attraction")
    public String saveAttraction(Attraction attraction, Model model) {
        attractionService.saveAttraction(attraction); // Save the attraction
        model.addAttribute("message", "Attraction saved successfully!"); // Display success message
        return "redirect:/attractions?city=" + attraction.getCity(); // Redirect to attractions by city
    }
    
    // Fetch and display the list of attractions by city
    @GetMapping("/attractions")
    public String showAttractions(Model model) {
        List<Attraction> attractions = attractionService.getAllAttractions();
        model.addAttribute("attractions", attractions);
        return "attractions"; // This refers to the attractions.html page
    }
    
}
