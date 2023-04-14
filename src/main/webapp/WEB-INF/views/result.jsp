<%--
  Created by IntelliJ IDEA.
  User: mr697
  Date: 4/14/2023
  Time: 3:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="shop1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h6>Your Tax has been calculated!</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="accordion" id="accordionExample" class="container-fluid">
                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button"
                                        data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false"
                                        aria-controls="collapseTwo">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                         class="bi bi-arrows-angle-expand" fill="currentColor"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                              d="M1.5 10.036a.5.5 0 0 1 .5.5v3.5h3.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5z"/>
                                        <path fill-rule="evenodd"
                                              d="M6.354 9.646a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0zm8.5-8.5a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0z"/>
                                        <path fill-rule="evenodd"
                                              d="M10.036 1.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 1 1-1 0V2h-3.5a.5.5 0 0 1-.5-.5z"/>
                                    </svg>&nbsp;&nbsp;Taxable Income Calculation
                                </button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
                             data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-sm table-dark">
                                        <thead>
                                        <tr>
                                            <th>Area</th>
                                            <th>Amount</th>
                                            <th>Max. Exemption</th>
                                            <th>Taxable</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Basic Salary</td>
                                            <td id="basic_salary_show">${incomeCalculator.basicSalary}</td>
                                            <td>
                                                <span id="basic_salary_exemption">0</span>
                                            </td>
                                            <td>
                                                <span id="basic_salary_taxable">${incomeCalculator.basicSalary}</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>House Rent</td>
                                            <td id="houserent_show">${incomeCalculator.houseRent}</td>
                                            <td>
                                                <span id="houserent_exemption">${incomeCalculator.houseRentExemption}</span>
                                            </td>
                                            <td>
                                                <span id="houserent_taxable">${incomeCalculator.houseRentTaxable}</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Medical Allowance</td>
                                            <td id="medical_show">${incomeCalculator.medicalAllowance}</td>
                                            <td>
                                                <span id="medical_exemption">${incomeCalculator.medicalExemption}</span>
                                            </td>
                                            <td>
                                                <span id="medical_taxable">${incomeCalculator.medicalTaxable}</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Conveyance</td>
                                            <td id="conveyance_show">${incomeCalculator.conveyanceAllowance}</td>
                                            <td>
                                                <span id="conveyance_exemption">${incomeCalculator.conveyanceExemption}</span>
                                            </td>
                                            <td>
                                                <span id="conveyance_taxable">${incomeCalculator.conveyanceTaxable}</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Incentive/OT</td>
                                            <td id="commision_show">${incomeCalculator.incentive}</td>
                                            <td>
                                                <span id="commision_exemption">0</span>
                                            </td>
                                            <td>
                                                <span id="commision_taxable">${incomeCalculator.incentive}</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Festival Bonus</td>
                                            <td id="bonus_show">${incomeCalculator.festivalBonus}</td>
                                            <td>
                                                <span id="bonus_exemption">0</span>
                                            </td>
                                            <td>
                                                <span id="bonus_taxable">${incomeCalculator.festivalBonus}</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Total</th>
                                            <td><span id="total_income2">${incomeCalculator.totalIncome}</span></td>
                                            <td>-</td>
                                            <th>
                                                <span id="total_taxable">${incomeCalculator.totalTaxableIncome}</span>
                                            </th>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingThree">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button"
                                        data-toggle="collapse" data-target="#collapseThree" aria-expanded="false"
                                        aria-controls="collapseThree">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                         class="bi bi-arrows-angle-expand" fill="currentColor"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                              d="M1.5 10.036a.5.5 0 0 1 .5.5v3.5h3.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5z"/>
                                        <path fill-rule="evenodd"
                                              d="M6.354 9.646a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0zm8.5-8.5a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0z"/>
                                        <path fill-rule="evenodd"
                                              d="M10.036 1.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 1 1-1 0V2h-3.5a.5.5 0 0 1-.5-.5z"/>
                                    </svg>&nbsp;&nbsp;Gross Tax Liability
                                </button>
                            </h2>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree"
                             data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-dark table-sm">
                                        <thead>
                                        <tr>
                                            <th>Slab</th>
                                            <th>Tax%</th>
                                            <th>Amount</th>
                                            <th>Tax</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><span id="1st_slab"></span>Upto 300,000 Taka</td>
                                            <td>0%</td>
                                            <td><span id="slab_1">${taxCalculator.slab1}</span></td>
                                            <td><span id="slab_1_tax">${taxCalculator.tax1}</span></td>
                                        </tr>
                                        <tr>
                                            <td><span id="2nd_slab"></span>On the Next 100,000 Taka</td>
                                            <td>5%</td>
                                            <td><span id="slab_2"></span>${taxCalculator.slab2}</td>
                                            <td><span id="slab_2_tax"></span>${taxCalculator.tax2}</td>
                                        </tr>
                                        <tr>
                                            <td><span id="3rd_slab"></span>On the Next 300,000 Taka</td>
                                            <td>10%</td>
                                            <td><span id="slab_3"></span>${taxCalculator.slab3}</td>
                                            <td><span id="slab_3_tax"></span>${taxCalculator.tax3}</td>
                                        </tr>
                                        <tr>
                                            <td><span id="4th_slab"></span>On the Next 400,000 Taka</td>
                                            <td>15%</td>
                                            <td><span id="slab_4"></span>${taxCalculator.slab4}</td>
                                            <td><span id="slab_4_tax"></span>${taxCalculator.tax4}</td>
                                        </tr>
                                        <tr>
                                            <td><span id="5th_slab"></span>On the Next 500,000 Taka</td>
                                            <td>20%</td>
                                            <td><span id="slab_5"></span>${taxCalculator.slab5}</td>
                                            <td><span id="slab_5_tax"></span>${taxCalculator.tax5}</td>
                                        </tr>
                                        <tr>
                                            <td><span id="6th_slab"></span>Above</td>
                                            <td>25%</td>
                                            <td><span id="slab_6"></span>${taxCalculator.slab6}</td>
                                            <td><span id="slab_6_tax"></span>${taxCalculator.tax6}</td>
                                        </tr>
                                        <tr>
                                            <th>Gross Tax Liability</th>
                                            <td>-</td>
                                            <td>-</td>
                                            <th><span id="Gross_Tax_1"></span>${taxCalculator.grossTaxLiability}</th>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingFour">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button"
                                        data-toggle="collapse" data-target="#collapseFour" aria-expanded="false"
                                        aria-controls="collapseFour">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                         class="bi bi-arrows-angle-expand" fill="currentColor"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                              d="M1.5 10.036a.5.5 0 0 1 .5.5v3.5h3.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5z"/>
                                        <path fill-rule="evenodd"
                                              d="M6.354 9.646a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0zm8.5-8.5a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0z"/>
                                        <path fill-rule="evenodd"
                                              d="M10.036 1.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 1 1-1 0V2h-3.5a.5.5 0 0 1-.5-.5z"/>
                                    </svg>&nbsp;&nbsp;Rebate
                                </button>
                            </h2>
                        </div>
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour"
                             data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-dark table-sm">
                                        <thead>
                                        <tr>
                                            <th>Eligible Amount</th>
                                            <td><span id="eligible_investment2"></span></td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <th>Accepted Investment</th>
                                            <td id="investment_show"></td>
                                        </tr>
                                        <tr>
                                            <th>Rebate</th>
                                            <td><span id="rebate"></span></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="headingFive">
                            <h2 class="mb-0">
                                <button class="btn btn-link btn-block text-left collapsed" type="button"
                                        data-toggle="collapse" data-target="#collapseFive" aria-expanded="false"
                                        aria-controls="collapseFive">
                                    <svg width="1em" height="1em" viewBox="0 0 16 16"
                                         class="bi bi-arrows-angle-expand" fill="currentColor"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd"
                                              d="M1.5 10.036a.5.5 0 0 1 .5.5v3.5h3.5a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5z"/>
                                        <path fill-rule="evenodd"
                                              d="M6.354 9.646a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0zm8.5-8.5a.5.5 0 0 1 0 .708l-4.5 4.5a.5.5 0 0 1-.708-.708l4.5-4.5a.5.5 0 0 1 .708 0z"/>
                                        <path fill-rule="evenodd"
                                              d="M10.036 1.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 1 1-1 0V2h-3.5a.5.5 0 0 1-.5-.5z"/>
                                    </svg>&nbsp;&nbsp;Net Tax Payable
                                </button>
                            </h2>
                        </div>
                        <div id="collapseFive" class="collapse" aria-labelledby="headingFive"
                             data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-dark table-sm">
                                        <tbody>
                                        <tr>
                                            <th>Gross Tax Liability (BDT)</th>
                                            <td id="Gross_Tax_2"></td>
                                        </tr>
                                        <tr>
                                            <th>Tax after Rebate (BDT)</th>
                                            <td id="tax_after_rebate"></td>
                                        </tr>
                                        <tr>
                                            <th>Net Tax Payable (BDT)<sup>*</sup></th>
                                            <td id="net_tax"></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <p>* Surcharge applcable in case of net asset more than 3 Crore</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
