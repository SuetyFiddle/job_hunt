package com.example.job_hunt.api;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/education")
public class EducationController extends BaseController<Education> {
    public EducationController(EducationRepository repo) {
        super(repo);
    }
}