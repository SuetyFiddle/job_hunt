package com.example.job_hunt.api;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "responsibilities")
public class Responsibility {
    @Id //primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // only used when adding to the DB through JPA, lets db handle id generation
    private Long id;

    private String text;

    // getters
    public Long getId() {
        return id;
    }

    public String getResponsibility() {
        return text;
    }
}
