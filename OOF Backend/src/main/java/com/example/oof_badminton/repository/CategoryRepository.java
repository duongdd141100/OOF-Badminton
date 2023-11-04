package com.example.oof_badminton.repository;

import com.example.oof_badminton.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Float> {
}
