package com.example.oof_badminton.service.impl;

import com.example.oof_badminton.entity.Banner;
import com.example.oof_badminton.repository.BannerRepository;
import com.example.oof_badminton.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BannerServiceImpl implements BannerService {

    @Autowired
    private BannerRepository bannerRepo;

    @Override
    public List<Banner> findAll() {
        return bannerRepo.findAll();
    }

}
