package com.example.job_hunt.api;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/tools")
public class ToolController extends BaseController<Tool> {
    public ToolController(ToolRepository repo) {
        super(repo);
    }
}
