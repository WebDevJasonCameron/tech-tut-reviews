package com.jasoncodes.techtutreviews.controllers;

import com.jasoncodes.techtutreviews.models.Review;
import com.jasoncodes.techtutreviews.models.User;
import com.jasoncodes.techtutreviews.repositories.ReviewRepository;
import com.jasoncodes.techtutreviews.repositories.UserRepository;
import com.jasoncodes.techtutreviews.services.EmailService;
import com.jasoncodes.techtutreviews.services.StringService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

    // ATT
    private final ReviewRepository reviewDao;
    private final UserRepository userDao;
    private final EmailService emailService;
    private final StringService stringService;


    // CON
    public ReviewController(ReviewRepository reviewDao, UserRepository userDao, EmailService emailService, StringService stringService) {
        this.reviewDao = reviewDao;
        this.userDao = userDao;
        this.emailService = emailService;
        this.stringService = stringService;
    }

    // METH
    @GetMapping
    public String showReviewHomePage(){
        return "/reviews/index";
    }

    @GetMapping("/all")
    public String showAllReviews(Model model){


        List<Review> reviews = reviewDao.findAll();
        List<User> users = userDao.findAll();

        model.addAttribute("userSize", users.size());
        model.addAttribute("reviewSize", reviews.size());
        model.addAttribute("stringService", stringService);
        model.addAttribute("reviews", reviews);

        return "/reviews/all";
    }

    @PostMapping("/single")
    public String showSingleReviewPage(@RequestParam("review-id") long id,
                                       Model model){

        System.out.println("id = " + id);
        
        model.addAttribute("review", reviewDao.getById(id));

        return "/reviews/single";
    }

    @GetMapping("/create")
    public String showReviewCreatePage(Model model){
        model.addAttribute("review", new Review());
        return "/reviews/create";
    }

    @PostMapping("/create")
    public String createReview(@ModelAttribute Review review, Model model){

        // User session
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        review.setUser(user);

        // Email Services
        emailService.prepareAndSend(review, review.getTitle(), review.getReviewComments());
        reviewDao.save(review);
        Long id = review.getId();

        // Set review obj for page ingestion
        model.addAttribute("review-id", id);
//        model.addAttribute("review", review);
        return "redirect:/reviews/all";
    }

    @PostMapping("/delete")
    public String removeReview(@RequestParam("review-id") long id){

        reviewDao.deleteById(id);

        return "redirect:/reviews";
    }

    @PostMapping("/edit")
    public String showEditPage(@RequestParam("review-id") long id,
                               Model model){

        model.addAttribute("review", reviewDao.getById(id) );

        return "/reviews/edit";
    }

    @PostMapping("update")
    public String updateReview(@ModelAttribute Review review,
                               @RequestParam("review-id") long id,
                               @RequestParam("user-id") long uid){

        User user = userDao.getById(uid);

        Review reviewOg = reviewDao.getById(id);

        reviewOg.setTitle(review.getTitle());
        reviewOg.setRating(review.getRating());
        reviewOg.setReviewComments(review.getReviewComments());
        reviewOg.setThumb(review.getThumb());
        reviewOg.setUrl(review.getUrl());
        reviewOg.setUser(user);

        reviewDao.save(reviewOg);

        return "/reviews/index";
    }



}  //<--END
