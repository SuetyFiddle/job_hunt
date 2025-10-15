package com.example.job_hunt.api;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/experience")
public class ExperienceController extends BaseController<Experience> {
    public ExperienceController(ExperienceRepository repo) {
        super(repo);
    }
}
