package com.example.job_hunt.api;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "education")
public class Education {
    @Id //primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // only used when adding to the DB through JPA, lets db handle id generation
    private Long id;

    private String institution;
    private String degree;
    private String result;
    private LocalDate startDate;
    private LocalDate endDate;
    private String description;

    // getters
    public Long getId() {
        return id;
    }

    public String getInstitution() {
        return institution;
    }

    public String getDegree() {
        return degree;
    }

    public String getResult() {
        return result;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public String getDescription() {
        return description;
    }
}