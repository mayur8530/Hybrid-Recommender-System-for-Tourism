package com.tourism.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tourism.modal.Attraction;

public interface AttractionRepository extends JpaRepository<Attraction, Long> {
	List<Attraction> findByCity(String city);

    // Find attractions by type
    List<Attraction> findByType(String type);

    // Find attractions by weather condition
    List<Attraction> findByWeatherCondition(String weatherCondition);
    
}
