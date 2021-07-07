package org.example.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class HomeController {
    @GetMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/success")
    public void loginPageRedirect(HttpServletRequest request, HttpServletResponse response, Authentication authResult) throws IOException, ServletException {
        String role =  authResult.getAuthorities().toString();
        System.out.println("ROLEEEE "+ role);
        if(role.contains("ROLE_ADMIN")){
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/"));
        }
        else if(role.contains("ROLE_USER")) {
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/"));
        }
    }
}
