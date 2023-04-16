package main.app.domain;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "tax_info")
public class TaxInfo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "tax_info_id")
    private int taxInfoId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "accepted_investment")
    @NotNull
    private double acceptedInvestment;

    @Column(name = "rebate")
    @NotNull
    private double rebate;

    @Column(name = "tax_after_rebate")
    @NotNull
    private double taxAfterRebate;

    @Column(name = "total_taxable_income")
    @NotNull
    private double totalTaxableIncome;

    @Column(name = "gross_tax_liability")
    @NotNull
    private double grossTaxLiability;

    @Column(name = "eligible_amount")
    @NotNull
    private double eligibleAmount;

    @Column(name = "net_tax")
    @NotNull
    private double netTax;

    public TaxInfo() {
    }

    public int getTaxInfoId() {
        return taxInfoId;
    }

    public void setTaxInfoId(int taxInfoId) {
        this.taxInfoId = taxInfoId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public double getAcceptedInvestment() {
        return acceptedInvestment;
    }

    public void setAcceptedInvestment(double acceptedInvestment) {
        this.acceptedInvestment = acceptedInvestment;
    }

    public double getRebate() {
        return rebate;
    }

    public void setRebate(double rebate) {
        this.rebate = rebate;
    }

    public double getTaxAfterRebate() {
        return taxAfterRebate;
    }

    public void setTaxAfterRebate(double taxAfterRebate) {
        this.taxAfterRebate = taxAfterRebate;
    }

    public double getTotalTaxableIncome() {
        return totalTaxableIncome;
    }

    public void setTotalTaxableIncome(double totalTaxableIncome) {
        this.totalTaxableIncome = totalTaxableIncome;
    }

    public double getGrossTaxLiability() {
        return grossTaxLiability;
    }

    public void setGrossTaxLiability(double grossTaxLiability) {
        this.grossTaxLiability = grossTaxLiability;
    }

    public double getEligibleAmount() {
        return eligibleAmount;
    }

    public void setEligibleAmount(double eligibleAmount) {
        this.eligibleAmount = eligibleAmount;
    }

    public double getNetTax() {
        return netTax;
    }

    public void setNetTax(double netTax) {
        this.netTax = netTax;
    }
}
