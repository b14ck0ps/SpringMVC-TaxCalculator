package main.app.domain;

import main.app.service.Enums.PayerCategory;
import main.app.service.Enums.PayerZone;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "user_income")
public class UserIncome {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_income_id")
    private int userIncomeId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "basic_salary")
    @NotNull
    private double basicSalary;

    @Column(name = "house_rent")
    @NotNull
    private double houseRent;

    @Column(name = "medical_allowance")
    @NotNull
    private double medicalAllowance;

    @Column(name = "conveyance_allowance")
    @NotNull
    private double conveyanceAllowance;

    @Column(name = "incentive")
    @NotNull
    private double incentive;

    @Column(name = "festival_bonus")
    @NotNull
    private double festivalBonus;

    @Column(name = "investment")
    @NotNull
    private double investment;

    @Enumerated(EnumType.STRING)
    @Column(name = "payer_category")
    private PayerCategory payerCategory;

    @Enumerated(EnumType.STRING)
    @Column(name = "payer_zone")
    private PayerZone payerZone;

    public UserIncome() {
    }

    public int getUserIncomeId() {
        return userIncomeId;
    }

    public void setUserIncomeId(int userIncomeId) {
        this.userIncomeId = userIncomeId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

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
