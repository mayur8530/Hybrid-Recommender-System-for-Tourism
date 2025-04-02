package com.tourism.modal;

import java.time.LocalTime;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Visit {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Unique identifier for the visit

    @Column(nullable = false)
    private String city; // Name of the city visited

    @Column(name = "visit_day", nullable = false)
    private String visitDay; // Day of the visit, typically an integer

    @Column(nullable = false)
    private String attraction; // Main attraction of the visit

    @Column(name = "entry_time", nullable = false)
    private String entryTime; // Entry time in HH:mm format

    @Column(nullable = true)
    private String weather; // Weather condition during the visit

    @Column(name = "travel_time", nullable = true)
    private String travelTime; // Travel time to the location

    @Column(nullable = false)
    private double rating; // Rating for the visit, between 0.0 and 5.0

    // Many-to-One relationship with User
    @ManyToOne(cascade = CascadeType.ALL)
    private User user; // Associated user for the visit

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getVisitDay() {
        return visitDay;
    }

    public void setVisitDay(String visitDay) {
        this.visitDay = visitDay;
    }

    public String getAttraction() {
        return attraction;
    }

    public void setAttraction(String attraction) {
        this.attraction = attraction;
    }

    public String getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(String entryTime) {
        this.entryTime = entryTime;
    }

    public String getWeather() {
        return weather;
    }

    public void setWeather(String weather) {
        this.weather = weather;
    }

    public String getTravelTime() {
        return travelTime;
    }

    public void setTravelTime(String travelTime) {
        this.travelTime = travelTime;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

	@Override
	public String toString() {
		return "Visit [id=" + id + ", city=" + city + ", visitDay=" + visitDay + ", attraction=" + attraction
				+ ", entryTime=" + entryTime + ", weather=" + weather + ", travelTime=" + travelTime + ", rating="
				+ rating + ", user=" + user + "]";
	}
}
