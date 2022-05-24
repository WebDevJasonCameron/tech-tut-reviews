package com.jasoncodes.techtutreviews.controllers;

import com.jasoncodes.techtutreviews.models.Review;
import com.jasoncodes.techtutreviews.models.User;
import com.jasoncodes.techtutreviews.repositories.ReviewRepository;
import com.jasoncodes.techtutreviews.repositories.UserRepository;
import com.jasoncodes.techtutreviews.services.EmailService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/reviews")
public class ReviewController {

    // ATT
    private final  ReviewRepository reviewDao;
    private final UserRepository userDao;
    private final EmailService emailService;


    // CON
    public ReviewController(ReviewRepository reviewDao, UserRepository userDao, EmailService emailService) {
        this.reviewDao = reviewDao;
        this.userDao = userDao;
        this.emailService = emailService;
    }

    // METH
    @GetMapping
    public String showReviewHomePage(){
        return "/reviews/index";
    }

    @GetMapping("/all")
    public String showAllReviews(Model model){

        List<Review> reviews = reviewDao.findAll();
        model.addAttribute("reviews", reviews);

        return "/reviews/all";
    }

    @GetMapping("/single")
    public String showSingleReviewPage(Model model){

        List<Review> reviews = reviewDao.findAll();
        Review review = reviews.get(reviews.size() - 1);
        model.addAttribute("review", review);


        return "/reviews/single";
    }

    @GetMapping("/create")
    public String showReviewCreatePage(Model model){
        model.addAttribute("review", new Review());
        return "/reviews/create";
    }

    @PostMapping("/create")
    public String createReview(@ModelAttribute Review review, Model model){

        // Attach User
        User user = userDao.getById(1L);                            //<-- Change after Session
        review.setUser(user);

        // Email Services
        emailService.prepareAndSend(review, review.getTitle(), review.getReviewComments());
        reviewDao.save(review);

        // Set review obj for page ingestion
        model.addAttribute("review", review);
        return "redirect:/reviews/single";
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
