package com.tourism.controller;

import java.security.Principal;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tourism.modal.User;
import com.tourism.service.UserService;

import lombok.extern.slf4j.Slf4j;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
@RestController
@Slf4j
public class AuthController {
	@Autowired
	private UserService userService;

	@Autowired
	private PasswordEncoder passwordEncoder;
	private static final Logger log = LoggerFactory.getLogger(AuthController.class);
	@GetMapping("/register")
	public String showRegistrationPage() {
		log.info("User is Register sucessfully");
		return "register"; // Ensure register.html exists in templates
	}

	@GetMapping("/login")
	public String showloginpage(Principal prn) {
		// System.out.println(prn);
		return "login"; // Ensure register.html exists in templates
	}

	@GetMapping("/admin/")
//	@ResponseBody
	public String adm(Principal principal) {
		// Get the username of the logged-in user
		String username = principal.getName();
		System.out.println("Logged-in username: " + username);
//		return "Logged-in username: " + username;
		return "attraction";
	}

	@PostMapping("/register")
	public String handleRegistration(@ModelAttribute User user, Model model) {
		try {
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			userService.saveUser(user);
			model.addAttribute("message", "Registration successful! Please log in.");
			return "login"; // Ensure login.html exists in templates
		} catch (Exception e) {
			model.addAttribute("error", "An error occurred during registration.");
			return "register"; // Return to the registration page in case of an error
		}
	}
	
	@GetMapping("/admin/users")
	public String fetchAllUsers(Model model) {
	    List<User> users = userService.getAllUsers(); // Fetch all users from the database
	    model.addAttribute("users", users); // Add the list to the model
	    return "users"; // Name of your Thymeleaf template
	}

}
