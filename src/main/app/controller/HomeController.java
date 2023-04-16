package main.app.controller;

import main.app.domain.User;
import main.app.domain.UserIncome;
import main.app.service.UserIncomeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
    @RequestMapping("/home")
    public String home(Model model, HttpSession session) {
        User user = session.getAttribute("user") != null ? (User) session.getAttribute("user") : null;
        if (user == null) {
            return "redirect:/user/login";
        }
        UserIncome userIncome = UserIncomeService.findById(user.getUserId());
        model.addAttribute("userIncome", userIncome);
        return "home";
    }
}
