package com.example.oof_badminton.repository;

import com.example.oof_badminton.entity.Banner;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BannerRepository extends JpaRepository<Banner, Float> {
}
