package com.example.oof_badminton.common;

import lombok.Getter;

@Getter
public enum OrderStatusEnum {
    DELIVERING("Delivering"),
    COMPLETED("Completed");


    private String message;

    OrderStatusEnum(String message) {
        this.message = message;
    }

}
