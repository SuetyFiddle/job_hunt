package com.example.job_hunt.api;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/tools")
public class ToolController {
    
    private final ToolRepository repo;

    public ToolController(ToolRepository repo) {
        this.repo = repo;
    }

    @GetMapping
    public List<Tool> getAllTools() {
        return repo.findAll();
    }
}
