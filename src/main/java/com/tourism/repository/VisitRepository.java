package com.tourism.repository;

import java.time.LocalTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tourism.modal.Visit;

public interface VisitRepository extends JpaRepository<Visit, Long> {
	List<Visit> findByCity(String city);

    // Find visits by attraction name
    List<Visit> findByAttraction(String attraction);

    // Find visits by day
    List<Visit> findByVisitDay(String day);
}
