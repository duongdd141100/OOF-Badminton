package com.example.oof_badminton.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "sizes")
public class Size extends BaseEntity {

    @Column(name = "name")
    private String name;

}
