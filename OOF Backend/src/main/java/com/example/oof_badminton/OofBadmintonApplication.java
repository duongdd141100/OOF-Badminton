package com.example.oof_badminton;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class OofBadmintonApplication {

    public static void main(String[] args) {
        SpringApplication.run(OofBadmintonApplication.class, args);
    }

}
