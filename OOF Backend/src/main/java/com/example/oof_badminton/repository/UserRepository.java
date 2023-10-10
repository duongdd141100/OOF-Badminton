package com.example.oof_badminton.repository;

import com.example.oof_badminton.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Float> {
    User findByUsername(String username);
}
