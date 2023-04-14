package main.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {

    @RequestMapping("/")
    public String hello(Model model) {
        model.addAttribute("name", "Azran");
        return "calculator";
    }
}
