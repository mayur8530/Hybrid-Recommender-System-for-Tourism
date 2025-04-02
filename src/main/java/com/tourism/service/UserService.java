package com.tourism.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourism.modal.User;
import com.tourism.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;
	public void saveUser(User user) {
        userRepository.save(user);
    }
	
	public User getUserIdByEmail(String email) {
		Optional<User> user = userRepository.findByEmail(email);
		
		
		return user.get();
		
		
	}
	public List<User> getAllUsers() {
        return userRepository.findAll(); // Fetch all users
    }
}
