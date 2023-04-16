<%--
  Created by IntelliJ IDEA.
  User: mr697
  Date: 4/16/2023
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Income Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-..." crossorigin="anonymous">
</head>
<body class="container">
<form:form method="POST" action="${pageContext.request.contextPath}/user/userIncome/save" modelAttribute="userIncome">
    <div class="row">
        <h2>Add Income Info</h2>
        <div class="col-md-6">
            <div class="form-group">
                <label for="basicSalary">Basic Salary</label>
                <form:input path="basicSalary" type="number" class="form-control" id="basicSalary" required="true"/>
            </div>
            <div class="form-group">
                <label for="houseRent">House Rent</label>
                <form:input path="houseRent" type="number" class="form-control" id="houseRent" required="true"/>
            </div>
            <div class="form-group">
                <label for="medicalAllowance">Medical Allowance</label>
                <form:input path="medicalAllowance" type="number" class="form-control" id="medicalAllowance"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="conveyanceAllowance">Conveyance Allowance</label>
                <form:input path="conveyanceAllowance" type="number" class="form-control" id="conveyanceAllowance"
                            required="true"/>
            </div>
            <div class="form-group">
                <label for="incentive">Incentive</label>
                <form:input path="incentive" type="number" class="form-control" id="incentive" required="true"/>
            </div>
            <div class="form-group">
                <label for="festivalBonus">Festival Bonus</label>
                <form:input path="festivalBonus" type="number" class="form-control" id="festivalBonus" required="true"/>
            </div>
            <div class="form-group">
                <label for="investment">Investment</label>
                <form:input path="investment" type="number" class="form-control" id="investment" required="true"/>
            </div>
            <div class="form-group">
                <label for="payerCategory">Payer Category</label>
                <form:select path="payerCategory" class="form-control" id="payerCategory">
                    <form:option value="General">General</form:option>
                    <form:option value="FemaleOrSeniorCitizen">Non-FemaleOrSeniorCitizen</form:option>
                    <form:option value="Disabled">Disabled</form:option>
                    <form:option value="GazettedFreedomFighter">GazettedFreedomFighter</form:option>
                </form:select>
            </div>
            <div class="form-group">
                <label for="payerZone">Payer Zone</label>
                <form:select path="payerZone" class="form-control" id="payerZone">
                    <form:option value="DhakaOrChittagong">DhakaOrChittagong</form:option>
                    <form:option value="OtherCities">OtherCities</form:option>
                    <form:option value="RestOfTheCountry">RestOfTheCountry</form:option>
                </form:select>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary mt-3">Submit</button>
</form:form>
</body>
</html>