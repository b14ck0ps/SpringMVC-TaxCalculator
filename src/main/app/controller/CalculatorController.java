package main.app.controller;

import main.app.domain.SalaryInformation;
import main.app.service.Enums.PayerCategory;
import main.app.service.Enums.PayerZone;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import java.beans.PropertyEditorSupport;

@Controller
@RequestMapping("/calculator")
public class CalculatorController {

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(PayerCategory.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                setValue(PayerCategory.valueOf(text));
            }
        });
        binder.registerCustomEditor(PayerZone.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                setValue(PayerZone.valueOf(text));
            }
        });
    }

    @RequestMapping("/")
    public String hello(Model model) {
        SalaryInformation salaryInformation = new SalaryInformation();
        model.addAttribute("salaryInformation", salaryInformation);
        return "calculator";
    }

    @RequestMapping("/calculate")
    public String calculate(Model model, SalaryInformation salaryInformation) {
        model.addAttribute("salaryInformation", salaryInformation);
        return "calculator";
    }
}
