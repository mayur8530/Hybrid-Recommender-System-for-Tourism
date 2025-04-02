package com.tourism.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tourism.modal.Attraction;
import com.tourism.repository.AttractionRepository;

@Service
public class AttractionService {

    @Autowired
    private AttractionRepository attractionRepository;

    // Save an attraction
    public void saveAttraction(Attraction attraction) {
        attractionRepository.save(attraction); // Save the attraction to the database
    }

    // Other methods for retrieving attractions
    public List<Attraction> getAttractionsByCity(String city) {
        return attractionRepository.findByCity(city);
    }

    public List<Attraction> getAttractionsByType(String type) {
        return attractionRepository.findByType(type);
    }

    public List<Attraction> getAttractionsByWeatherCondition(String weatherCondition) {
        return attractionRepository.findByWeatherCondition(weatherCondition);
    }
    public List<Attraction> getAllAttractions() {
        return attractionRepository.findAll();
    }
}
