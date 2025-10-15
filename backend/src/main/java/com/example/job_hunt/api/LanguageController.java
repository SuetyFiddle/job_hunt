package com.example.job_hunt.api;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/languages")
public class LanguageController extends BaseController<Language> {
    public LanguageController(LanguageRepository repo) {
        super(repo);
    }
}
