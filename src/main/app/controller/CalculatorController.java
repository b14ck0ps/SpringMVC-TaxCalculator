package main.app.controller;

import main.app.dto.SalaryInformation;
import main.app.service.Enums.PayerCategory;
import main.app.service.Enums.PayerZone;
import main.app.service.calculator.NetTaxByZoneCalculator;
import main.app.service.calculator.TaxCalculator;
import main.app.service.calculator.TaxableIncome;
import main.app.service.calculator.RebateCalculator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
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
        TaxableIncome incomeCalculator = new TaxableIncome(salaryInformation.getBasicSalary(), salaryInformation.getHouseRent(), salaryInformation.getMedicalAllowance(), salaryInformation.getConveyanceAllowance(), salaryInformation.getIncentive(), salaryInformation.getFestivalBonus());
        model.addAttribute("incomeCalculator", incomeCalculator);

        TaxCalculator taxCalculator = new TaxCalculator(incomeCalculator.getTotalTaxableIncome(), salaryInformation.getPayerCategory());
        model.addAttribute("taxCalculator", taxCalculator);

        RebateCalculator rebateCalculator = new RebateCalculator(taxCalculator.getGrossTaxLiability(), incomeCalculator.getTotalTaxableIncome(), salaryInformation.getInvestment());
        model.addAttribute("rebateCalculator", rebateCalculator);

        NetTaxByZoneCalculator netTaxByZoneCalculator = new NetTaxByZoneCalculator(rebateCalculator.getTaxAfterRebate(), salaryInformation.getPayerZone());
        model.addAttribute("netTaxByZoneCalculator", netTaxByZoneCalculator);

        return "calculator";
    }
}
