package com.tourism.modal;

public class UserVisits {

	private Long id; // Unique identifier for the visit
	private String city; // Name of the city visited
	private String visitDay; // Day of the visit
	private String attraction; // Main attraction of the visit
	private String entryTime; // Entry time in HH:mm format
	private String weather; // Weather condition during the visit
	private String travelTime; // Travel time to the location
	private double rating; // Rating for the visit
	private String name; // Additional name field

	// Constructor
	public UserVisits(Long id, String city, String visitDay, String attraction, String entryTime, String weather,
			String travelTime, double rating, String name) {
		this.id = id;
		this.city = city;
		this.visitDay = visitDay;
		this.attraction = attraction;
		this.entryTime = entryTime;
		this.weather = weather;
		this.travelTime = travelTime;
		this.rating = rating;
		this.name = name;
	}

	// Default constructor
	public UserVisits() {
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "UserVisits [id=" + id + ", city=" + city + ", visitDay=" + visitDay + ", attraction=" + attraction
				+ ", entryTime=" + entryTime + ", weather=" + weather + ", travelTime=" + travelTime + ", rating="
				+ rating + ", name=" + name + "]";
	}
}
