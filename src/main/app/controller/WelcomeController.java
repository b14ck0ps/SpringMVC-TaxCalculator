package main.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/greeting")
public class WelcomeController {

    @RequestMapping("/hello")
    public String hello(Model model) {
        model.addAttribute("name", "Azran");
        return "welcome";
    }

}
