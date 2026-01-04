package com.tourism.service;

import java.util.List;
import java.util.Optional;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tourism.modal.User;
import com.tourism.repository.UserRepository;

import ch.qos.logback.classic.Logger;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {
	Log log= LogFactory.getLog(UserService.class);
	@Autowired
	private UserRepository userRepository;
	public void saveUser(User user) {
		log.info("getting user by email");
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
