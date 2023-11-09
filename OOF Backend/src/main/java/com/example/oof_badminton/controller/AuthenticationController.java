package com.example.oof_badminton.controller;

import com.example.oof_badminton.common.BaseResponse;
import com.example.oof_badminton.common.ErrorMessageEnum;
import com.example.oof_badminton.config.UserAuthProvider;
import com.example.oof_badminton.constants.RequestMappingConstant;
import com.example.oof_badminton.entity.User;
import com.example.oof_badminton.service.AuthService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/api/auth")
@Slf4j
@CrossOrigin
public class AuthenticationController {

    @Autowired
    private AuthService authService;

    @Autowired
    private UserAuthProvider userAuthProvider;

    @GetMapping("/me")
    public ResponseEntity<BaseResponse<String>> me(@AuthenticationPrincipal User user) {
//        user.getRole().setUsers(new ArrayList<>());
//        user.setCarts(new ArrayList<>());
        return ResponseEntity.ok(BaseResponse.ok(user));
    }

    @PostMapping("/sign-in")
    public ResponseEntity<BaseResponse<String>> signIn(@AuthenticationPrincipal User user) {
        try {
            return ResponseEntity.ok(BaseResponse.ok(userAuthProvider.createToken(user.getUsername())));
        } catch (Exception e) {
            log.error(RequestMappingConstant.SIGN_IN_API + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(ErrorMessageEnum.typeOf(e.getMessage()).getMessage()));
        }
    }

    @PostMapping("/sign-up")
    public ResponseEntity<BaseResponse<String>> signUp(@RequestBody User user) {
        try {
            return ResponseEntity.ok(BaseResponse.ok(authService.save(user)));
        } catch (Exception e) {
            log.error(RequestMappingConstant.SIGN_IN_API + e);
            return ResponseEntity.badRequest().body(BaseResponse.fail(ErrorMessageEnum.typeOf(e.getMessage()).getMessage()));
        }
    }
}
