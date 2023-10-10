package com.example.isc301.config;

import com.example.isc301.constants.RequestMappingConstant;
import com.example.isc301.service.UserDetailServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

@Configuration
public class SecurityConfig {

    @Autowired
    private FilterExceptionHandler filterExceptionHandler;

    @Autowired
    private JWTAuthFilter jwtAuthFilter;

    @Autowired
    private UsernamePasswordAuthFilter usernamePasswordAuthFilter;

    @Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailServiceImpl();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                .cors().and().csrf().disable()
                .addFilterBefore(usernamePasswordAuthFilter, BasicAuthenticationFilter.class)
                .addFilterBefore(jwtAuthFilter, UsernamePasswordAuthFilter.class)
                .addFilterBefore(filterExceptionHandler, JWTAuthFilter.class)
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authorizeHttpRequests(request -> {
                    request.requestMatchers(HttpMethod.POST, RequestMappingConstant.SIGN_IN_API, RequestMappingConstant.SIGN_UP_API, RequestMappingConstant.SIGN_OUT_API).permitAll()
                            .anyRequest().authenticated();
//                    request.requestMatchers(HttpMethod.GET, RequestMappingConstant.ME_API).permitAll()
//                            .anyRequest().authenticated();

                });
        return http.build();
    }
}
