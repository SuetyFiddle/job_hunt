package com.example.job_hunt.api;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "experience")
public class Experience {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // only used when adding to the DB through JPA, lets db handle id generation
    private Long id;

    private String company;
    private String role;
    private String description;
    private LocalDate startDate;
    private LocalDate endDate;

    // unidirectional one-to-many relationship.
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "experience_id", nullable = false)
    final private List<Responsibility> responsibilities = new ArrayList<>();

    // getters
    public Long getId() {
        return id;
    }

    public String getCompany() {
        return company;
    }

    public String getRole() {
        return role;
    }

    public String getDescription() {
        return description;
    }

    public List<Responsibility> getResponsibilities() {
        return responsibilities;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

}
