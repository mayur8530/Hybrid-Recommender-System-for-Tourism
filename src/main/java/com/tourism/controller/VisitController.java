package com.tourism.controller;

import com.tourism.modal.User;
import com.tourism.modal.UserVisits;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.memory.UserAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.tourism.modal.Visit;
import com.tourism.repository.VisitRepository;
import com.tourism.service.UserService;

@Controller
public class VisitController {

	@Autowired
	private VisitRepository visitRepository;
	@Autowired
	private UserService userservice;

//    

	@GetMapping("/saveVisit")
	public String showfeedbak() {
		return "feedback"; // Ensure register.html exists in templates
	}

	@PostMapping("/saveVisit")
	public String saveVisit(Visit visit, Model model, Principal prn) {
		User userreturn = userservice.getUserIdByEmail(prn.getName());
		visit.setUser(userreturn);
		visitRepository.save(visit); // Save the attraction

		System.out.println(userreturn);
		model.addAttribute("message", "Attraction saved successfully!"); // Display success message
		return "feedback";
	}

	@GetMapping("/showvisits")
	public String showVisits(Model model) {
		System.out.println("TRY TO SHOW USER VISITS");

		List<UserVisits> visitList = new ArrayList<>();

		for (Visit itr : visitRepository.findAll()) {
			UserVisits userVisits = new UserVisits();

			// Map properties from Visit to UserVisits
			userVisits.setName(itr.getUser().getName());
			userVisits.setCity(itr.getCity());
			userVisits.setVisitDay(itr.getVisitDay());
			userVisits.setAttraction(itr.getAttraction());
			userVisits.setEntryTime(itr.getEntryTime());
			userVisits.setWeather(itr.getWeather());
			userVisits.setTravelTime(itr.getTravelTime());
			userVisits.setRating(itr.getRating());

			visitList.add(userVisits);
		}

		System.out.println("This is visits: " + visitList);

		// Pass visitList to the model with a key
		model.addAttribute("visitList", visitList);
		return "feedDisplay";
	}

}
