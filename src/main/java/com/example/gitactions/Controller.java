package com.example.gitactions;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping
    public String hello(){
        return "THIS SHOULD get both things done, git actions and concourse;";
    }
}
