package main.app.dto;


import main.app.domain.TaxInfo;
import main.app.domain.UserIncome;

public class IncomeTaxInfo {
    private UserIncome userIncome;
    private TaxInfo taxInfo;

    public IncomeTaxInfo(UserIncome userIncome, TaxInfo taxInfo) {
        this.userIncome = userIncome;
        this.taxInfo = taxInfo;
    }

    public UserIncome getUserIncome() {
        return userIncome;
    }

    public void setUserIncome(UserIncome userIncome) {
        this.userIncome = userIncome;
    }

    public TaxInfo getTaxInfo() {
        return taxInfo;
    }

    public void setTaxInfo(TaxInfo taxInfo) {
        this.taxInfo = taxInfo;
    }
}