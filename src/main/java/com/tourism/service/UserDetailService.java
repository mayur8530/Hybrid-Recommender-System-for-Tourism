package com.tourism.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.tourism.modal.User;
import com.tourism.repository.UserRepository;

@Service
public class UserDetailService implements UserDetailsService {

	@Autowired
	UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println(username);
	    Optional<User> user = userRepository.findByEmail(username);
        System.out.println(user);
	    if (user.isPresent()) {
	        User userObj = user.get();
//	        System.out.println("Found user: " + userObj);
	        return org.springframework.security.core.userdetails.User
	                .withUsername(userObj.getUsername())
	                .password(userObj.getPassword())
	                .roles(userObj.getRole())
	                .build();
	    } else {
	        System.out.println("User not found: " + username);
	        throw new UsernameNotFoundException(username);
	    }
	}


}
