package org.example.controller;

import org.example.entity.Authority;
import org.example.entity.User;
import org.example.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RegistrationController {
    private final UserService userService;

    @Autowired
    public RegistrationController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(value = {"/register"})
    public String registerForm(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String saveUser(@ModelAttribute("user") User user, Model model) {
        String info = info(user);
        if (!info.isEmpty()) {
            model.addAttribute("info", info);
            return "register";
        }
        user.getAuthorities().add(new Authority(user, "ROLE_USER"));
        userService.saveUser(user);
        return "redirect:/login";
    }

    @PostMapping("/adminregister")
    public String saveAdmin(@ModelAttribute("user") User user, Model model) {
        String info = info(user);
        if (!info.isEmpty()) {
            model.addAttribute("info", info);
            return "adminregister";
        }
        user.getAuthorities().add(new Authority(user, "ROLE_USER"));
        user.getAuthorities().add(new Authority(user, "ROLE_ADMIN"));
        userService.saveUser(user);
        return "redirect:/login";
    }

    private String info(User user) {
        if (userService.getUser(user.getUsername()) != null) {
            return "użytkownik o takiej nazwie istnieje";
        } else if (user.getUsername().isEmpty() || user.getPassword().isEmpty()) {
            return "wypełnij wszystkie pola";
        }
        return "";
    }

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
    }

}
