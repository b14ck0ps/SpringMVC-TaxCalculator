package main.app.dto;

import main.app.service.Enums.PayerCategory;
import main.app.service.Enums.PayerZone;

public class SalaryInformation {
    private double basicSalary;
    private double houseRent;
    private double medicalAllowance;
    private double conveyanceAllowance;
    private double incentive;
    private double festivalBonus;
    private double investment;
    private PayerCategory payerCategory;
    private PayerZone payerZone;

    public SalaryInformation() {
    }

    public SalaryInformation(double basicSalary, double houseRent, double medicalAllowance, double conveyanceAllowance, double incentive, double festivalBonus, double investment, PayerCategory payerCategory, PayerZone payerZone) {
        this.basicSalary = basicSalary;
        this.houseRent = houseRent;
        this.medicalAllowance = medicalAllowance;
        this.conveyanceAllowance = conveyanceAllowance;
        this.incentive = incentive;
        this.festivalBonus = festivalBonus;
        this.investment = investment;
        this.payerCategory = payerCategory;
        this.payerZone = payerZone;
    }

    // Getters and setters for all instance variables
    public double getBasicSalary() {
        return basicSalary;
    }

    public void setBasicSalary(double basicSalary) {
        this.basicSalary = basicSalary;
    }

    public double getHouseRent() {
        return houseRent;
    }

    public void setHouseRent(double houseRent) {
        this.houseRent = houseRent;
    }

    public double getMedicalAllowance() {
        return medicalAllowance;
    }

    public void setMedicalAllowance(double medicalAllowance) {
        this.medicalAllowance = medicalAllowance;
    }

    public double getConveyanceAllowance() {
        return conveyanceAllowance;
    }

    public void setConveyanceAllowance(double conveyanceAllowance) {
        this.conveyanceAllowance = conveyanceAllowance;
    }

    public double getIncentive() {
        return incentive;
    }

    public void setIncentive(double incentive) {
        this.incentive = incentive;
    }

    public double getFestivalBonus() {
        return festivalBonus;
    }

    public void setFestivalBonus(double festivalBonus) {
        this.festivalBonus = festivalBonus;
    }

    public double getInvestment() {
        return investment;
    }

    public void setInvestment(double investment) {
        this.investment = investment;
    }

    public PayerCategory getPayerCategory() {
        return payerCategory;
    }

    public void setPayerCategory(PayerCategory payerCategory) {
        this.payerCategory = payerCategory;
    }

    public PayerZone getPayerZone() {
        return payerZone;
    }

    public void setPayerZone(PayerZone payerZone) {
        this.payerZone = payerZone;
    }
}
