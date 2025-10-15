package com.example.job_hunt.api;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/languages")
public class LanguageController {
    
    private final LanguageRepository repo;

    public LanguageController(LanguageRepository repo) {
        this.repo = repo;
    }

    @GetMapping
    public List<Language> getAllLanguages() {
        return repo.findAll();
    }
}
