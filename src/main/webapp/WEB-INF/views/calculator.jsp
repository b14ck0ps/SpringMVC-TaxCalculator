<%--
  Created by IntelliJ IDEA.
  User: mr697
  Date: 4/14/2023
  Time: 2:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ include file="Header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1 style="text-align:center; background-color:Black; color:white; padding:8px">Income Tax Calculator Bangladesh
    (Salary)</h1>

<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h6 style="padding: 0.25%;">Choose Tax Payer Category</h6>
            <form:form action="calculate" modelAttribute="salaryInformation">
                <form:select path="payerCategory" id="category_select" class="btn btn-dark dropdown-toggle"
                             type="button">
                    <form:option value="General">General</form:option>
                    <form:option value="FemaleOrSeniorCitizen">Female/Senior Citizen</form:option>
                    <form:option value="Disabled">Disabled</form:option>
                    <form:option value="GazettedFreedomFighter">Gazetted Freedom Fighters</form:option>
                </form:select>
                <br><br>
                <h6 style="padding: 0.25%;">Choose Zone</h6>
                <form:select path="payerZone" id="zone_select" class="btn btn-dark dropdown-toggle" type="button">
                    <form:option value="DhakaOrChittagong">Dhaka/Chattagram City</form:option>
                    <form:option value="OtherCities">Other City</form:option>
                    <form:option value="RestOfTheCountry">Rest of the Country</form:option>
                </form:select>
                <br><br>
                <h6 style="padding: 0.25%;">Salary Breakdown<sup>*</sup></h6>
                <div class="table-responsive">
                    <table class="table table-sm table-dark">
                        <thead>
                        <tr>
                            <th>Area</th>
                            <th>Amount</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Basic Salary</td>
                            <td><form:input path="basicSalary" id="basic_salary" type="number"
                                            value="${basicSalary}"/></td>
                        </tr>
                        <tr>
                            <td>House Rent</td>
                            <td><form:input path="houseRent" id="house_rent" type="number" value="${houseRent}"/></td>
                        </tr>
                        <tr>
                            <td>Medical Allowance</td>
                            <td><form:input path="medicalAllowance" id="medical" type="number"
                                            value="${medicalAllowance}"/></td>
                        </tr>
                        <tr>
                            <td>Conveyance</td>
                            <td><form:input path="conveyanceAllowance" id="conveyance" type="number"
                                            value="${conveyanceAllowance}"/></td>
                        </tr>
                        <tr>
                            <td>Incentive/OT</td>
                            <td><form:input path="incentive" id="commision" type="number" value="${incentive}"/></td>
                        </tr>
                        <tr>
                            <td>Festival Bonus</td>
                            <td><form:input path="festivalBonus" id="bonus" type="number"
                                            value="${festivalBonus}"/></td>
                        </tr>
                        <tr>
                            <th>Total</th>
                            <td><span id="total_income"></span></td>
                        </tr>
                        </tbody>
                    </table>
                    <p>* Total fiscal year salary including arrear (if any)</p>
                </div>
                <h6 style="padding: 0.25%;">Investment</h6>
                <div class="table-responsive">
                    <table class="table table-striped table-dark table-sm">
                        <tbody>
                        <tr>
                            <td>Investment</td>
                            <td><form:input path="investment" type="number" value="${investment}"/></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <button id="Calculate-button" type="submit" class="btn btn-info btn-md"
                        style="padding-right: 1%; padding-left: 1%;"
                        data-toggle="modal" data-target="#shop1">Calculate
                </button>
                <button id="Calculate-button" type="button" class="btn btn-info btn-md"
                        style="padding-right: 1%; padding-left: 1%;"
                        data-toggle="modal" data-target="#shop1">Details
                </button>
                <button type="button" class="btn btn-info btn-md" style="padding-right: 1%; padding-left: 1%;"
                        onclick="location.reload()">Reset
                </button>
            </form:form>
        </div>
    </div>
</div>
<br><br>

<%@include file="result.jsp" %>

</body>

</html>
