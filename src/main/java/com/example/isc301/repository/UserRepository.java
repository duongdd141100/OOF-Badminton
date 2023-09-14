package com.example.isc301.repository;

import com.example.isc301.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Float> {
    User findByUsername(String username);
}
