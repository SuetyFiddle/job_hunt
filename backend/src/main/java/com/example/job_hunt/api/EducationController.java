package com.example.job_hunt.api;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/education")
public class EducationController {
    
    private final EducationRepository repo;

    public EducationController(EducationRepository repo) {
        this.repo = repo;
    }

    @GetMapping
    public List<Education> getAllEducation() {
        return repo.findAll();
    }
}
