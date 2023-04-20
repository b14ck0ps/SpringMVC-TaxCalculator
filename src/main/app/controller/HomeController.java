package main.app.controller;

import main.app.domain.TaxInfo;
import main.app.domain.User;
import main.app.domain.UserIncome;
import main.app.dto.IncomeTaxInfo;
import main.app.service.TaxInfoService;
import main.app.service.UserIncomeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    @RequestMapping("/home")
    public String home(Model model, HttpSession session) {
        User user = session.getAttribute("user") != null ? (User) session.getAttribute("user") : null;
        if (user == null) {
            return "redirect:/user/login";
        }
        List<UserIncome> userIncomeList = UserIncomeService.findById(user.getUserId());
        List<TaxInfo> taxInfoList = TaxInfoService.findById(user.getUserId());

        if (userIncomeList != null && taxInfoList != null) {
            List<IncomeTaxInfo> incomeTaxInfoList = new ArrayList<>();
            for (int i = 0; i < userIncomeList.size(); i++) {
                UserIncome userIncome = userIncomeList.get(i);
                TaxInfo taxInfo = i < taxInfoList.size() ? taxInfoList.get(i) : null;
                incomeTaxInfoList.add(new IncomeTaxInfo(userIncome, taxInfo));
            }
            model.addAttribute("incomeTaxInfoList", incomeTaxInfoList);
        } else {
            model.addAttribute("incomeTaxInfoList", null);
        }
        return "home";
    }
}