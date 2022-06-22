package com.jasoncodes.techtutreviews.controllers;

import com.jasoncodes.techtutreviews.models.User;
import com.jasoncodes.techtutreviews.repositories.UserRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController {
    private UserRepository userDao;
    private PasswordEncoder passwordEncoder;

    public UserController(UserRepository userDao, PasswordEncoder passwordEncoder) {
        this.userDao = userDao;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/sign-up")
    public String showSignupForm(Model model){
        model.addAttribute("user", new User());
        return "users/sign-up";
    }

    @PostMapping("/sign-up")
    public String saveUser(@ModelAttribute User user){

        // SECURE
        String hash = passwordEncoder.encode(user.getPassword());
        user.setPassword(hash);

        // DEFAULT AVATAR
        if(user.getAvatar() == null){
            user.setAvatar("/img/avatars/Black-01.png");
        }

        userDao.save(user);
        return "redirect:/login";
    }

    @GetMapping("/profile")
    public String showProfilePage(Model model){

        // SET USER MODEL
        provideUserModel(model);

        return "/users/profile";
    }

    @GetMapping("/edit")
    public String showEditUserPage(Model model){

        // SET USER MODEL
        provideUserModel(model);

        return "/users/edit";
    }


    // HELPER METHS
    private User provideUserModel(Model model){

        // First, get the auth session's credentials
        Object principle = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        // Set up var outside
        String username = "";

        // If an auth user is present, their name wil go in the var. If not, anon user is returned
        if (principle instanceof UserDetails){
            username = ((UserDetails)principle).getUsername();
        } else username = principle.toString();

        // Build an anonymousUser user obj to pass to the expecting thymeleaf page and set it in the model
        User user;
        if(username.equals("anonymousUser")){
            user = new User(-1, "anonymousUser");

            // Additional Objects thymeleaf will look for;
            // ...

        } else {
            user = userDao.findByUsername(username);
        }

        model.addAttribute("user", user);

        return user;
    }



}  //<--END
