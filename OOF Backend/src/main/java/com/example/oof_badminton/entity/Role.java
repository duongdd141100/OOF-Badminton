package com.example.oof_badminton.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name = "roles")
public class Role extends BaseEntity{
    @Column(name = "name")
    private String name;

    @OneToOne(mappedBy = "role", fetch = FetchType.LAZY)
    private User user;
}
