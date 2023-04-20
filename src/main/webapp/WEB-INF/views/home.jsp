<%@include file="navbar.jsp" %>
<div class="container my-4">
    <h1>Welcome, <c:out value="${sessionScope.user.name}"/></h1>
    <p>You are logged in as TIN <c:out value="${sessionScope.user.tinNumber}"/></p>
    <c:if test="${incomeTaxInfoList == null}">
        <button class="btn btn-primary"
                onclick="window.location.href='${pageContext.request.contextPath}/user/add-tax-info/'"> Add
            Info
        </button>
    </c:if>
    <c:if test="${incomeTaxInfoList != null}">
        <c:forEach items="${incomeTaxInfoList}" var="incomeTaxInfo">
            <div class="p-3 border mt-3 d-flex justify-content-around">
                <!-- Print payer category and zone from userIncome -->
                <div>
                    <span class="fw-bold" for="payerCategory">Payer Category: </span>
                    <span>${incomeTaxInfo.userIncome.payerCategory}</span>
                </div>

                <div>
                    <span class="fw-bold" for="payerCategory">Payer Zone: </span>
                    <span>${incomeTaxInfo.userIncome.payerZone}</span>
                </div>
            </div>

            <!-- Print income and tax details from userIncome and taxInfo -->
            <div class="detail_container mb-5">
                <div class="income-details p-3 border my-3">
                    <span class="fw-bold">Basic Salary: </span>
                    <span>${incomeTaxInfo.userIncome.basicSalary} Taka</span>
                    <br>
                    <span class="fw-bold">House Rent: </span>
                    <span>${incomeTaxInfo.userIncome.houseRent} Taka</span>
                    <br>
                    <span class="fw-bold">Medical Allowance: </span>
                    <span>${incomeTaxInfo.userIncome.medicalAllowance} Taka</span>
                    <br>
                    <br>
                    <span class="fw-bold">Conveyance Allowance: </span>
                    <span>${incomeTaxInfo.userIncome.conveyanceAllowance} Taka</span>
                    <br>
                    <span class="fw-bold">Incentive / OT: </span>
                    <span>${incomeTaxInfo.userIncome.incentive} Taka</span>
                    <br>
                    <span class="fw-bold">Festival Bonus: </span>
                    <span>${incomeTaxInfo.userIncome.festivalBonus} Taka</span>
                    <br>
                    <span class="fw-bold">Investment: </span>
                    <span>${incomeTaxInfo.userIncome.investment} Taka</span>
                    <br>
                </div>

                <div class="tax-details p-3 border my-3">
                    <!-- Print tax details -->
                    <span class="fw-bold">Total Taxable Income: </span>
                    <span>${incomeTaxInfo.taxInfo.totalTaxableIncome} Taka</span>
                    <br>
                    <span class="fw-bold" for="accepted_investment">Accepted Investment: </span>
                    <span>${incomeTaxInfo.taxInfo.acceptedInvestment} Taka</span>
                    <br>
                    <br>
                    <span class="fw-bold">Rebate: </span>
                    <span>${incomeTaxInfo.taxInfo.rebate} Taka</span>
                    <br>
                    <span class="fw-bold">Tax After Rebate: </span>
                    <span>${incomeTaxInfo.taxInfo.taxAfterRebate} Taka</span>
                    <br>
                    <br>
                    <span class="fw-bold">Eligible Amount: </span>
                    <span>${incomeTaxInfo.taxInfo.eligibleAmount} Taka</span>
                    <br>
                    <span class="fw-bold">Gross Liability: </span>
                    <span>${incomeTaxInfo.taxInfo.grossTaxLiability} Taka</span>
                    <br>
                    <span class="fw-bold">Net Tax: </span>
                    <span>${incomeTaxInfo.taxInfo.netTax} Taka</span>
                    <br>
                </div>
            </div>
        </c:forEach>
        <button class="btn btn-primary"
                onclick="window.location.href='${pageContext.request.contextPath}/user/add-tax-info/'"> Add New
            Info
        </button>
    </c:if>
</div>
<%@include file="footer.jsp" %>

<style>
    .detail_container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .income-details,
    .tax-details {
        flex-basis: 48%;
    }

</style>
