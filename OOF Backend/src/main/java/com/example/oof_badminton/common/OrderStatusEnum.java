package com.example.oof_badminton.common;

import lombok.Getter;

@Getter
public enum OrderStatusEnum {
    DELIVERING(1, "Delivering"),
    COMPLETED(2, "Completed");

    private Integer id;

    private String message;

    OrderStatusEnum(Integer id, String message) {
        this.id = id;
        this.message = message;
    }

}
