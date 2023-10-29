package com.example.oof_badminton.common;

import com.example.oof_badminton.entity.User;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Optional;

@Configuration
public class CurrentAuditorConfiguration implements AuditorAware<Float> {
    @Override
    public Optional<Float> getCurrentAuditor() {
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return Optional.of(user.getId());
    }
}
