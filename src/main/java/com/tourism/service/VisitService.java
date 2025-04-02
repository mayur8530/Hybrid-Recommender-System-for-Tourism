package com.tourism.service;

import java.time.LocalTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourism.modal.Visit;
import com.tourism.repository.VisitRepository;

@Service
public class VisitService {
	@Autowired
	private VisitRepository visitRepository;
	
	public List<Visit> getVisitsByCity(String city) {
        return visitRepository.findByCity(city);
    }

    public List<Visit> getVisitsByAttraction(String attraction) {
        return visitRepository.findByAttraction(attraction);
    }

    public List<Visit> getVisitsByDay(String day) {
        return visitRepository.findByVisitDay(day);
    }

    public void saveVisit(Visit visit) {
        visitRepository.save(visit);
    }
}
