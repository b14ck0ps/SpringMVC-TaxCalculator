<%--
  Created by IntelliJ IDEA.
  User: mr697
  Date: 4/16/2023
  Time: 12:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
</head>
<body>
<%@include file="navbar.jsp" %>

<div class="container mt-3">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h4>Login Form</h4>
                </div>
                <div class="card-body">
                    <span style="color: red">${sessionScope.error}</span>
                    <form:form method="POST" action="${pageContext.request.contextPath}/user/login"
                               modelAttribute="loginDto">
                        <div class="mb-3">
                            <form:label path="email" class="form-label">Email address</form:label>
                            <form:input path="email" class="form-control" required="true"/>
                        </div>
                        <div class="mb-3">
                            <form:label path="password" class="form-label">Password</form:label>
                            <form:password path="password" class="form-control" required="true"/>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"></script>
</body>
</html>



