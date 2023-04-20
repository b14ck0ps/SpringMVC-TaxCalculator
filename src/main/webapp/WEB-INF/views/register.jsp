<%--
  Created by IntelliJ IDEA.
  User: mr697
  Date: 4/16/2023
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-..." crossorigin="anonymous">
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mt-3">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h4>Registration Form</h4>
                </div>
                <div class="card-body">
                    <form:form method="POST" modelAttribute="user">
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <form:input type="text" class="form-control" id="name" path="name" required="true"/>
                            <form:errors path="name" Class="text-danger"/>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <form:input type="email" class="form-control" id="email" path="email" required="true"/>
                            <form:errors path="email" Class="text-danger"/>
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <form:input type="password" class="form-control" id="password" path="password"
                                        required="true"/>
                            <form:errors path="password" Class="text-danger"/>
                        </div>
                        <div class="mb-3">
                            <label for="tinNumber" class="form-label">TIN Number</label>
                            <form:input type="number" class="form-control" id="tinNumber" path="tinNumber"
                                        required="true"/>
                            <form:errors path="tinNumber" Class="text-danger"/>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-..."
        crossorigin="anonymous"></script>
</body>
</html>
