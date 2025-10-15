package com.example.job_hunt.api;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.GetMapping;


public abstract class BaseController<T> {
    protected final JpaRepository<T, Long> repository;

    protected BaseController(JpaRepository<T, Long> repository) {
        this.repository = repository;
    }

    @GetMapping
    public List<T> getAll() {
        return repository.findAll();
    }
}
