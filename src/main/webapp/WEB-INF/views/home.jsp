<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>Home</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Tax Calculator</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/calculator/">Calculator</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container my-4">
    <h1>Welcome, <c:out value="${sessionScope.user.name}"/></h1>
    <p>You are logged in as TIN <c:out value="${sessionScope.user.tinNumber}"/></p>
    <c:if test="${userIncome == null}">
        <button class="btn btn-primary"
                onclick="window.location.href='${pageContext.request.contextPath}/user/add-tax-info/'"> Add
            Info
        </button>
    </c:if>
    <c:if test="${userIncome != null}">
        <div class="p-3 border my-3 d-flex justify-content-around">
            <div>
                <span class="fw-bold" for="payerCategory">Payer Category: </span>
                <span>${userIncome.payerCategory}</span>
            </div>

            <div>
                <span class="fw-bold" for="payerCategory">Payer Zone: </span>
                <span>${userIncome.payerZone}</span>
            </div>
        </div>
        <div class="detail_container">
            <div class="income-details p-3 border my-3">
                <span class="fw-bold" for="basic_salary">Basic Salary: </span>
                <span>${userIncome.basicSalary} Taka</span>
                <br>
                <span class="fw-bold" for="house_rent">House Rent: </span>
                <span>${userIncome.houseRent} Taka</span>
                <br>
                <span class="fw-bold" for="medical_allowance">Medical Allowance: </span>
                <span>${userIncome.medicalAllowance} Taka</span>
                <br>
                <span class="fw-bold" for="conveyance_allowance">Conveyance Allowance: </span>
                <span>${userIncome.conveyanceAllowance} Taka</span>
                <br>
                <span class="fw-bold" for="incentive">Incentive / OT: </span>
                <span>${userIncome.incentive} Taka</span>
                <br>
                <span class="fw-bold" for="festivalBonus">Festival Bonus: </span>
                <span>${userIncome.festivalBonus} Taka</span>
                <br>
                <span class="fw-bold" for="investment">Investment : </span>
                <span>${userIncome.investment} Taka</span>
                <br>
            </div>
            <div class="tax-details p-3 border my-3">
                <span class="fw-bold">Total Taxable Income: </span>
                <span>${taxInfo.totalTaxableIncome} Taka</span>
                <br>
                <span class="fw-bold" for="accepted_investment">Accepted Investment: </span>
                <span>${taxInfo.acceptedInvestment} Taka</span>
                <br>
                <br>
                <span class="fw-bold">Rebate: </span>
                <span>${taxInfo.rebate} Taka</span>
                <br>
                <span class="fw-bold">Tax After Rebate: </span>
                <span>${taxInfo.taxAfterRebate} Taka</span>
                <br>
                <br>
                <span class="fw-bold">Eligible Amount: </span>
                <span>${taxInfo.eligibleAmount} Taka</span>
                <br>
                <span class="fw-bold">Gross Liability: </span>
                <span>${taxInfo.grossTaxLiability} Taka</span>
                <br>
                <span class="fw-bold">Net Tax: </span>
                <span>${taxInfo.netTax} Taka</span>
                <br>
            </div>
        </div>
        <button class="btn btn-primary mt-3"
                onclick="window.location.href='${pageContext.request.contextPath}/user/add-tax-info/'"> Add New Info
            Info
        </button>
    </c:if>
</div>

</body>
</html>

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
