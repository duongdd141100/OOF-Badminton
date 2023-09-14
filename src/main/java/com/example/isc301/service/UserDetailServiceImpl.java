package com.example.isc301.service;

import com.example.isc301.entity.Role;
import com.example.isc301.entity.User;
import com.example.isc301.entity.UserRole;
import com.example.isc301.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.stream.Collectors;

@Service
public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepo;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findByUsername(username);
        return org.springframework.security.core.userdetails.User.withUsername(username)
                .password(user.getPassword())
                .roles(String.valueOf(user.getUserRoles()
                        .stream().map(UserRole::getRole)
                        .map(Role::getName).collect(Collectors.toList())))
                .build();
    }
}
