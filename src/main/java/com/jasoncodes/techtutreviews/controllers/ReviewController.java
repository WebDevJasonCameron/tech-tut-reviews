package com.jasoncodes.techtutreviews.controllers;

import com.jasoncodes.techtutreviews.repositories.ReviewRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

    // ATT
    ReviewRepository reviewDao;

    // CON
    public ReviewController(ReviewRepository reviewDao) {
        this.reviewDao = reviewDao;
    }

    // METH
    @GetMapping
    public String showReviewHomePage(){
        return "/reviews/index";
    }


    @GetMapping("/create")
    public String showReviewCreatePage(){
        return "/reviews/create";
    }


}  //<--END
