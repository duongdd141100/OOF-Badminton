package com.example.oof_badminton.service;

import com.example.oof_badminton.entity.User;

public interface AuthService {

    User validateUser(User user);

    User save(User user);

    User findByUsername(String username);
}
