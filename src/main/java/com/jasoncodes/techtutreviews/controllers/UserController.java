package com.jasoncodes.techtutreviews.controllers;

import com.jasoncodes.techtutreviews.models.User;
import com.jasoncodes.techtutreviews.repositories.UserRepository;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

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

    @GetMapping("/visit-profile")
    public String showVisitProfilePage(@RequestParam("user-id") long id,
                                       Model model){

        // GET USER PROFILE
        User user = userDao.getById(id);
        model.addAttribute("user", user);


        return "/users/visit-profile";
    }

    @GetMapping("/edit")
    public String showEditUserPage(Model model){

        // SET USER MODEL
        provideUserModel(model);

        return "/users/edit";
    }

    @PostMapping("/edit")
    public String updateEditUserProfile(@Valid User user,
                                        BindingResult bindingResult,
                                        Model model){

        // Get Auth User
        User principle = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User authUser = userDao.getById(principle.getId());

        // Set Att
        String username = user.getUsername();
        String email = user.getEmail();
        String avatar = user.getAvatar();
        String hash = passwordEncoder.encode(user.getPassword());

        // Catch Problems
        if(bindingResult.hasErrors()){
            model.addAttribute("user", user);
            return "/users/edit";
        }

        // Catch Empty Inputs
        if(userDao.findByEmail(user.getEmail()) == null || authUser.getEmail().equals(userDao.findByEmail(user.getEmail()).getEmail())){
            User modUser = userDao.getById(principle.getId());
            modUser.setUsername(username);
            modUser.setEmail(email);
            modUser.setAvatar(avatar);
            modUser.setPassword(hash);
            userDao.save(modUser);
        } else if (user.getEmail().equals(userDao.findByEmail(user.getEmail()).getEmail())){
            bindingResult.addError(new FieldError("user", "email", "email is already taken"));
        }

        if(bindingResult.hasErrors()){
            model.addAttribute("user", user);
            return "/users/edit";
        }


        return "redirect:/user/profile";
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
