package main.app.service.calculator;

import main.app.service.Enums.PayerCategory;

public class TaxCalculator {
    private double totalTaxableIncome;
    private PayerCategory category;
    private double slab1, slab2, slab3, slab4, slab5, slab6;
    private double tax1, tax2, tax3, tax4, tax5, tax6;

    private double grossTaxLiability;
    private double eligibleAmount;

    public TaxCalculator() {
    }

    public TaxCalculator(double totalTaxableIncome, PayerCategory category) {
        this.totalTaxableIncome = totalTaxableIncome;
        this.category = category;
        calculateTax();
    }

    private void calculateTax() {

        // Calculate slab values based on category
        switch (category) {
            case General:
                slab1 = Math.min(300000, totalTaxableIncome);
                slab2 = Math.min(100000, Math.max(0, totalTaxableIncome - 300000));
                slab3 = Math.min(300000, Math.max(0, totalTaxableIncome - 400000));
                slab4 = Math.min(400000, Math.max(0, totalTaxableIncome - 700000));
                slab5 = Math.min(500000, Math.max(0, totalTaxableIncome - 1100000));
                slab6 = Math.max(0, totalTaxableIncome - 1600000);
                break;
            case FemaleOrSeniorCitizen:
                slab1 = Math.min(350000, totalTaxableIncome);
                slab2 = Math.min(100000, Math.max(0, totalTaxableIncome - 350000));
                slab3 = Math.min(300000, Math.max(0, totalTaxableIncome - 450000));
                slab4 = Math.min(400000, Math.max(0, totalTaxableIncome - 750000));
                slab5 = Math.min(500000, Math.max(0, totalTaxableIncome - 1150000));
                slab6 = Math.max(0, totalTaxableIncome - 1650000);
                break;
            case Disabled:
                slab1 = Math.min(450000, totalTaxableIncome);
                slab2 = Math.min(100000, Math.max(0, totalTaxableIncome - 450000));
                slab3 = Math.min(300000, Math.max(0, totalTaxableIncome - 550000));
                slab4 = Math.min(400000, Math.max(0, totalTaxableIncome - 850000));
                slab5 = Math.min(500000, Math.max(0, totalTaxableIncome - 1250000));
                slab6 = Math.max(0, totalTaxableIncome - 1750000);
                break;
            case GazettedFreedomFighter:
                slab1 = Math.min(475000, totalTaxableIncome);
                slab2 = Math.min(100000, Math.max(0, totalTaxableIncome - 475000));
                slab3 = Math.min(300000, Math.max(0, totalTaxableIncome - 575000));
                slab4 = Math.min(400000, Math.max(0, totalTaxableIncome - 875000));
                slab5 = Math.min(500000, Math.max(0, totalTaxableIncome - 1275000));
                slab6 = Math.max(0, totalTaxableIncome - 1775000);
                break;
            default:
                System.out.println("Invalid category");
                return;
        }

        // Calculate tax for each slab
        tax1 = slab1 * 0;
        tax2 = slab2 * 0.05;
        tax3 = slab3 * 0.1;
        tax4 = slab4 * 0.15;
        tax5 = slab5 * 0.2;
        tax6 = slab6 * 0.25;

        // Calculate gross tax liability and eligible amount
        grossTaxLiability = tax1 + tax2 + tax3 + tax4 + tax5 + tax6;
        eligibleAmount = totalTaxableIncome * 0.25;
    }

    public double getGrossTaxLiability() {
        return grossTaxLiability;
    }

    public double getEligibleAmount() {
        return eligibleAmount;
    }

    public double getSlab1() {
        return slab1;
    }

    public double getSlab2() {
        return slab2;
    }

    public double getSlab3() {
        return slab3;
    }

    public double getSlab4() {
        return slab4;
    }

    public double getSlab5() {
        return slab5;
    }

    public double getSlab6() {
        return slab6;
    }

    public double getTax1() {
        return tax1;
    }

    public double getTax2() {
        return tax2;
    }

    public double getTax3() {
        return tax3;
    }

    public double getTax4() {
        return tax4;
    }

    public double getTax5() {
        return tax5;
    }

    public double getTax6() {
        return tax6;
    }
}
