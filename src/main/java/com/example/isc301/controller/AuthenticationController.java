package com.example.isc301.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/auth")
public class AuthenticationController {
    @GetMapping("/me")
    public ResponseEntity<Authentication> me(Authentication authentication) {
        return ResponseEntity.ok(authentication);
    }
}
