package main.app.controller;

import javax.servlet.http.HttpSession;

import main.app.domain.User;
import main.app.domain.UserIncome;
import main.app.dto.LoginDto;
import main.app.service.UserIncomeService;
import main.app.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.sql.SQLException;

@Controller
@RequestMapping("/user")
public class UserController {
    @RequestMapping("/register")
    public String user(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @RequestMapping("/add-tax-info")
    public String addTaxInfo(Model model) {
        model.addAttribute("userIncome", new UserIncome());
        return "add-tax-info";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/";
    }

    @PostMapping("/register")
    public String user(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) throws SQLException {
        if (bindingResult.hasErrors()) {
            return "register";
        }
        UserService.create(user);
        return "redirect:/login";
    }

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("loginDto", new LoginDto());
        return "login";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("LoginDto") LoginDto loginDto, BindingResult bindingResult, HttpSession session) throws SQLException {
        if (bindingResult.hasErrors()) {
            //session error
            session.setAttribute("error", "Invalid email or password");
            return "redirect:/user/login";
        }
        if (UserService.IsAuthenticate(loginDto.getEmail(), loginDto.getPassword())) {
            session.removeAttribute("error");
            session.setAttribute("user", UserService.findByEmail(loginDto.getEmail()));
            return "redirect:/";
        }
        session.setAttribute("error", "Invalid email or password");
        return "redirect:/user/login";
    }

    @PostMapping("/userIncome/save")
    public String saveUserIncome(@Valid @ModelAttribute("userIncome") UserIncome userIncome, BindingResult bindingResult, HttpSession session) throws SQLException {
        if (bindingResult.hasErrors()) {
            return "add-tax-info";
        }
        User user = (User) session.getAttribute("user");
        userIncome.setUser(user);
        UserIncomeService.save(userIncome);
        return "redirect:/";
    }
}
