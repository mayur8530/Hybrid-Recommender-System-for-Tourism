//package com.tourism.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.tourism.modal.Attraction;
//import com.tourism.service.AttractionService;
//
//@Controller
//public class AttractionController {
//    
//    @Autowired
//    private AttractionService attractionService;
//
//    @GetMapping
//    public String listAttractions(@RequestParam String city, Model model) {
//        List<Attraction> attractions = attractionService.getAttractionsByCity(city);
//        model.addAttribute("attractions", attractions);
//        return "attractions";
//    }
//
//   
//}
