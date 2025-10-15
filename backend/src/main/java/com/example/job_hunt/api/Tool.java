package com.example.job_hunt.api;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tools")
public class Tool {
    @Id //primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) // only used when adding to the DB through JPA, lets db handle id generation
    private Long id;

    private String name;
    private String level;

    // getters
    public Long getId() {
        return id;
    }

    public String getTool() {
        return name;
    }

    public String getLevel() {
        return level;
    }
}
