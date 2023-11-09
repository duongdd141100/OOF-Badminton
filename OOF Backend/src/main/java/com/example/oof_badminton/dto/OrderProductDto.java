package com.example.oof_badminton.dto;

import lombok.Data;

@Data
public class OrderProductDto {
    private String productName;
    private String path;
    private String categoryName;
    private String supplierName;
    private Integer quantity;
    private Float unitPrice;
}
