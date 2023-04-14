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
<h1 style="text-align:center; background-color:Black; color:white; padding:8px">Income Tax Calculator Bangladesh
    (Salary)</h1>
<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h6 style="padding: 0.25%;">Choose Tax Payer Category</h6>
            <select id="category_select" class="btn btn-dark dropdown-toggle" type="button">
                <option value="1">General</option>
                <option value="2">Female/Senior Citizen</option>
                <option value="3">Disabled</option>
                <option value="4">Gazetted Freedom Fighters</option>
            </select>
            <br><br>
            <h6 style="padding: 0.25%;">Choose Zone</h6>
            <select id="zone_select" class="btn btn-dark dropdown-toggle" type="button">
                <option value="1">Dhaka/Chattagram City</option>
                <option value="2">Other City</option>
                <option value="3">Rest of the Country</option>
            </select>
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
                        <td><input id="basic_salary" type="number" value=0></td>
                    </tr>
                    <tr>
                        <td>House Rent</td>
                        <td><input id="house_rent" type="number" value=0></td>
                    </tr>
                    <tr>
                        <td>Medical Allowance</td>
                        <td><input id="medical" type="number" value=0></td>
                    </tr>
                    <tr>
                        <td>Conveyance</td>
                        <td><input id="conveyance" type="number" value=0></td>
                    </tr>
                    <tr>
                        <td>Incentive/OT</td>
                        <td><input id="commision" type="number" value=0></td>
                    </tr>
                    <tr>
                        <td>Festival Bonus</td>
                        <td><input id="bonus" type="number" value=0></td>
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
                        <th>Eligible Amount</th>
                        <td><span id="eligible_investment1"></span></td>
                    </tr>
                    <tr>
                        <th>Investment Amount</th>
                        <td><input id="investment" type="number" value=0></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <br>
            <button id="Calculate-button" type="button" class="btn btn-info btn-md"
                    style="padding-right: 1%; padding-left: 1%;"
                    data-toggle="modal" data-target="#shop1">Calculate
            </button>
            <button type="button" class="btn btn-info btn-md" style="padding-right: 1%; padding-left: 1%;"
                    onclick="location.reload()">Reset
            </button>
        </div>
    </div>
</div>
<br><br>

<%@include file="result.jsp"%>

</body>

</html>
